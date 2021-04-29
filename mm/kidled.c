// SPDX-License-Identifier: GPL-2.0
#include <linux/kthread.h>
#include <linux/memcontrol.h>
#include <linux/mm.h>
#include <linux/mmzone.h>
#include <linux/mm_inline.h>
#include <linux/module.h>
#include <linux/pagemap.h>
#include <linux/page-flags.h>
#include <linux/page_idle.h>
#include <linux/vmalloc.h>
#include <linux/wait.h>
#include <linux/kidled.h>
#include <linux/kernel.h>
#include <uapi/linux/sched/types.h>
#include <linux/kernel.h>
#include <linux/sched.h>
#include <asm/uaccess.h>
#include <linux/types.h>
#include <linux/proc_fs.h> //create proc file
#include <linux/seq_file.h> //use seq_file

#define FILENAME "idle_page_stats"

int kidled_show(struct seq_file *,void *); 
int kidled_open(struct inode *,struct file *);

char bucket_labels[8][13]={
		"[1,2)",
		"[2,5)",
		"[5,15)",
		"[15,30)",
		"[30,60)",
		"[60,120)",
		"[120,240)",
		"[240,+inf)"
	};

char type_labels[16][5]={
		"caei","daei","cfei","dfei",
		"caui","daui","cfui","dfui",
		"caea","daea","cfea","dfea",
		"caua","daua","cfua","dfua",
	};

/* custom the operations to the seq_file */
static const struct file_operations kidled_ops = {
        .owner = THIS_MODULE,
        .open = kidled_open,
        .read = seq_read,
        .release = single_release
};

/* do when open the seq file */
int kidled_open(struct inode *inode,struct file *file){
    single_open(file,kidled_show,NULL);//bind seq_file with myshow function
    return 0;
}
/*description: output process's info to log */
int kidled_show(struct seq_file *file,void *v){
	seq_printf(file,"KIDLED Idle Page Stats (By Yongkang ZHANG, adapted from Alibaba's Cloud Kernel)\n");
	seq_printf(file,"┌──> c: clean page / d: dirty page\n");
	seq_printf(file,"│┌──> f: file page / a: anonymous page\n");
	seq_printf(file,"││┌──> e: evictable page / u: unevictable page\n");
	seq_printf(file,"│││┌──> i: inactive page / a: active page\n");
	int type,bucket;
	seq_printf(file,"││││\t");
	for(bucket=0;bucket<8;bucket++){
		seq_printf(file,"%-11s",bucket_labels[bucket]);
	}
	seq_printf(file,"\n");
	for(type=0;type<16;type++){
		seq_printf(file,"%s:\t",type_labels[type]);
		for(bucket=0;bucket<8;bucket++){
			seq_printf(file,"%-11d",kidled_stats[type][bucket]);
		}
		seq_printf(file,"\n");
	}
	return 0;
}

/*
 * Should the accounting be hierarchical? Hierarchical accounting only
 * works when memcg is in hierarchy mode. It's OK when kilded enables
 * hierarchical accounting while memcg is in non-hierarchy mode, kidled
 * will account to the memory cgroup page is charged to. No dependency
 * between these two settings.
 */
static bool use_hierarchy __read_mostly;

struct kidled_scan_period kidled_scan_period;
const int kidled_buckets[NUM_KIDLED_BUCKETS] = {
	1, 2, 5, 15, 30, 60, 120, 240 };
int kidled_stats[KIDLE_NR_TYPE][NUM_KIDLED_BUCKETS];
struct list_head kidled_page_heads[KIDLE_NR_TYPE][NUM_KIDLED_BUCKETS];
static DECLARE_WAIT_QUEUE_HEAD(kidled_wait);
static unsigned long kidled_scan_rounds __read_mostly;

static inline int kidled_get_bucket(int age)
{
	int bucket;

	if (age < kidled_buckets[0])
		return -EINVAL;

	for (bucket = 1; bucket <= (NUM_KIDLED_BUCKETS - 1); bucket++) {
		if (age < kidled_buckets[bucket])
			return bucket - 1;
	}

	return NUM_KIDLED_BUCKETS - 1;
}

static inline int kidled_get_idle_type(struct page *page)
{
	int idle_type = KIDLE_BASE;

	if (PageDirty(page) || PageWriteback(page))
		idle_type |= KIDLE_DIRTY;
	if (page_is_file_cache(page))
		idle_type |= KIDLE_FILE;
	/*
	 * Couldn't call page_evictable() here, because we have not held
	 * the page lock, so use page flags instead. Different from
	 * PageMlocked().
	 */
	if (PageUnevictable(page))
		idle_type |= KIDLE_UNEVICT;
	if (PageActive(page))
		idle_type |= KIDLE_ACTIVE;
	return idle_type;
}

int kidled_inc_page_age(pg_data_t *pgdat, unsigned long pfn)
{
	struct page *page = pfn_to_page(pfn);
	unsigned long old, new;
	int age;

	do  {
		age = ((page->flags >> KIDLED_AGE_PGSHIFT) & KIDLED_AGE_MASK);
		if (age >= KIDLED_AGE_MASK)
			break;

		age++;
		new = old = page->flags;
		new &= ~(KIDLED_AGE_MASK << KIDLED_AGE_PGSHIFT);
		new |= ((age & KIDLED_AGE_MASK) << KIDLED_AGE_PGSHIFT);
	} while (unlikely(cmpxchg(&page->flags, old, new) != old));

	return age;
}
EXPORT_SYMBOL_GPL(kidled_inc_page_age);

void kidled_set_page_age(pg_data_t *pgdat, unsigned long pfn, int val)
{
	struct page *page = pfn_to_page(pfn);
	unsigned long old, new;

	do  {
		new = old = page->flags;
		new &= ~(KIDLED_AGE_MASK << KIDLED_AGE_PGSHIFT);
		new |= ((val & KIDLED_AGE_MASK) << KIDLED_AGE_PGSHIFT);
	} while (unlikely(cmpxchg(&page->flags, old, new) != old));

}
EXPORT_SYMBOL_GPL(kidled_set_page_age);

int kidled_get_page_age_new(struct page *page)
{
	int age = ((page->flags >> KIDLED_AGE_PGSHIFT) & KIDLED_AGE_MASK);
	return age;
}
EXPORT_SYMBOL_GPL(kidled_get_page_age_new);

/*
 * An idle page with an older age is more likely idle, while a busy page is
 * more likely busy, so we can reduce the sampling frequency to save cpu
 * resource when meet these pages. And we will keep sampling each time when
 * an idle page is young. See tables below:
 *
 *  idle age |   down ratio
 * ----------+-------------
 * [0, 1)    |     1/2      # busy
 * [1, 4)    |      1       # young idle
 * [4, 8)    |     1/2      # idle
 * [8, 16)   |     1/4      # old idle
 * [16, +inf)|     1/8      # older idle
 */
static inline bool kidled_need_check_idle(pg_data_t *pgdat, unsigned long pfn)
{
	struct page *page = pfn_to_page(pfn);
	int age = kidled_get_page_age(pgdat, pfn);
	unsigned long pseudo_random;

	if (age < 0)
		return false;

	/*
	 * kidled will check different pages at each round when need
	 * reduce sampling frequency, this depends on current pfn and
	 * global scanning rounds. There exist some special pfns, for
	 * one huge page, we can only check the head page, while tail
	 * pages would be checked in low levels and will be skipped.
	 * Shifting HPAGE_PMD_ORDER bits is to achieve good load balance
	 * for each round when system has many huge pages, 1GB is not
	 * considered here.
	 */
	if (PageTransHuge(page))
		pfn >>= compound_order(page);

	pseudo_random = pfn + kidled_scan_rounds;
	if (age == 0)
		return pseudo_random & 0x1UL;
	else if (age < 4)
		return true;
	else if (age < 8)
		return pseudo_random & 0x1UL;
	else if (age < 16)
		return (pseudo_random & 0x3UL) == 0x3UL;
	else
		return (pseudo_random & 0x7UL) == 0x7UL;
}

static inline void kidled_account(struct page *page, int type, int age, int nr_pages){
	//printk(KERN_WARNING "DEBUG kidled account!!!!!!!!!!!!!");
	int bucket = kidled_get_bucket(age);
	if (bucket >= 0){
		kidled_stats[type][bucket] += nr_pages;
		list_add(&page->bucket_head,&(kidled_page_heads[type][bucket]));
		//	printk("DEBUG: account %d %d!!",type, bucket);
		//if(kidled_page_heads[type][bucket].next==NULL)
		//	printk("DEBUG: failed to add a page head!!!!!!!!!!!!!!!!");
	}
}

static inline int kidled_scan_page(pg_data_t *pgdat, unsigned long pfn)
{
	struct page *page;
	int age, nr_pages = 1, idx;
	bool idle = false;

	if (!pfn_valid(pfn))
		goto out;

	page = pfn_to_page(pfn);
	if (!page || !PageLRU(page)) {
		kidled_set_page_age(pgdat, pfn, 0);
		goto out;
	}

	/*
	 * Try to skip clear PTE references which is an expensive call.
	 * PG_idle should be cleared when free a page and we have checked
	 * PG_lru flag above, so the race is acceptable to us.
	 */
	if (page_is_idle(page)) {
		if (kidled_need_check_idle(pgdat, pfn)) {
			if (!get_page_unless_zero(page)) {
				kidled_set_page_age(pgdat, pfn, 0);
				//printk("DEBUG: unless zero!!!!!!!!");
				goto out;
			}

			/*
			 * Check again after get a reference count, while in
			 * page_idle_get_page() it gets zone_lru_lock at first,
			 * it seems useless.
			 *
			 * Also we can't hold LRU lock here as the consumed
			 * time to finish the scanning is fixed. Otherwise,
			 * the accumulated statistics will be cleared out
			 * and scan interval (@scan_period_in_seconds) will
			 * be doubled. However, this may incur race between
			 * kidled and page reclaim. The page reclaim may dry
			 * run due to dumped refcount, but it's acceptable.
			 */
			if (unlikely(!PageLRU(page))) {
				put_page(page);
				kidled_set_page_age(pgdat, pfn, 0);
				//printk("DEBUG: unlikely LRU!!!!!!!!");
				goto out;
			}

			page_idle_clear_pte_refs(page);
			if (page_is_idle(page))
				idle = true;
			put_page(page);
		} else if (kidled_get_page_age(pgdat, pfn) > 0) {
			idle = true;
		}
	}

	if (PageTransHuge(page))
		nr_pages = 1 << compound_order(page);

	//printk(KERN_WARNING "DEBUG kidled_scan_page: idle %d\n",idle);
	if (idle) {
		age = kidled_inc_page_age(pgdat, pfn);
		if (age > 0)
			//kidled_mem_cgroup_account(page, age, nr_pages);
			kidled_account(page, kidled_get_idle_type(page),age,nr_pages);
		else
			age = 0;
	} else {
		age = 0;
		kidled_set_page_age(pgdat, pfn, 0);
		if (get_page_unless_zero(page)) {
			if (likely(PageLRU(page)))
				set_page_idle(page);
			put_page(page);
		}
	}

	for (idx = 1; idx < nr_pages; idx++)
		kidled_set_page_age(pgdat, pfn + idx, age);

out:
	return nr_pages;
}

static bool kidled_scan_node(pg_data_t *pgdat)
{
	unsigned long pfn, end, node_end;

	node_end = pgdat_end_pfn(pgdat);
	pfn = pgdat->node_start_pfn;
	end=node_end;
	while (pfn < end) {
		pfn += kidled_scan_page(pgdat, pfn);
	}

	pgdat->node_idle_scan_pfn = pfn;
	//printk("DEBUG: scan result (%d %d)!!!!!!!",kidled_page_heads[3][2].prev,kidled_page_heads[3][2].next);
	return pfn >= node_end;
}

static inline void kidled_scan_done(struct kidled_scan_period scan_period)
{
	kidled_scan_rounds++;
}

static inline void kidled_reset(bool free)
{
	pg_data_t *pgdat;

	memset(kidled_stats,0,sizeof(kidled_stats));
	int types,bucket;
	for(types=0;types<KIDLE_NR_TYPE;types++){
		for(bucket=0;bucket<NUM_KIDLED_BUCKETS;bucket++){
			kidled_page_heads[types][bucket].next=&(kidled_page_heads[types][bucket]);
			kidled_page_heads[types][bucket].prev=&(kidled_page_heads[types][bucket]);
		}
	}
	get_online_mems();
	for_each_online_pgdat(pgdat) {
		unsigned long pfn, end_pfn = pgdat->node_start_pfn +
					     pgdat->node_spanned_pages;

		for (pfn = pgdat->node_start_pfn; pfn < end_pfn; pfn++) {
			if (!pfn_valid(pfn))
				continue;

			kidled_set_page_age(pgdat, pfn, 0);
		}
	}
	put_online_mems();
}

static inline bool kidled_should_run(struct kidled_scan_period *p, bool *new)
{
	//printk(KERN_WARNING "DEBUG: kidled should run");
	if (unlikely(!kidled_is_scan_period_equal(p))) {
		struct kidled_scan_period scan_period;

		scan_period  = kidled_get_current_scan_period();
		if (p->duration)
			kidled_reset(!scan_period.duration);
		*p = scan_period;
		*new = true;
	} else {
		*new = false;
	}
	//printk(KERN_WARNING "DEBUG: kidled should run (%d,%d)",p->duration,*new);

	if (p->duration > 0)
		return true;

	return false;
	//return true;
}

struct timer_list test_timer;

static void kidled(struct timer_list *timer)
{
	pg_data_t *pgdat;
	bool scan_done = true;
	get_online_mems();
	memset(kidled_stats,0,sizeof(kidled_stats));
	int types,bucket;
	for(types=0;types<KIDLE_NR_TYPE;types++){
		for(bucket=0;bucket<NUM_KIDLED_BUCKETS;bucket++){
			kidled_page_heads[types][bucket].next=&(kidled_page_heads[types][bucket]);
			kidled_page_heads[types][bucket].prev=&(kidled_page_heads[types][bucket]);
		}
	}
	for_each_online_pgdat(pgdat) {
			scan_done &= kidled_scan_node(pgdat);
	}
	put_online_mems();
	mod_timer(&test_timer, jiffies + 3 * HZ);
}

static int __init kidled_init(void)
{
	struct proc_dir_entry * kidled_file;
	kidled_file = proc_create(FILENAME,0444,NULL,&kidled_ops);//create proc file
    if(kidled_file == NULL) //deal with error
        return -ENOMEM;
	
	test_timer.expires  = jiffies + 3 * HZ;
	timer_setup(&test_timer, kidled, 0);
	
	add_timer(&test_timer);

	return 0;
}

module_init(kidled_init);