#include <linux/mm.h>
#include <linux/sched/mm.h>
#include <linux/module.h>
#include <linux/kthread.h>
#include <linux/init.h>
#include <linux/delay.h>
#include <linux/kreclaimd.h>
#include <linux/kidled.h>
#include <linux/pagemap.h>
#include <linux/swap.h>
#include <linux/rmap.h>
#include <linux/kernel.h>
#include <linux/fs.h>
#include <linux/writeback.h>
#include <linux/sysctl.h>
#include <linux/gfp.h>
#include <linux/mm_inline.h>
#include <linux/mmzone.h>
#include <linux/proc_fs.h> //create proc file
#include <linux/seq_file.h> //use seq_file
#include "internal.h"

#define FILENAME_STAT "kreclaimd_stats"
#define FILENAME_PARAM "kreclaimd_params"
#define DATA_SIZE 1024

int kreclaimd_show(struct seq_file *,void *); 
int kreclaimd_open(struct inode *,struct file *);
static ssize_t kreclaimd_write(struct file *file, const char __user *ubuf,size_t count, loff_t *ppos);

static int stat_result_total=0,stat_result_last_round=0;
static int scan_period_ms=10000,cache_reclaim_age_threshold=5,cache_enabled_unmap=1;

/* custom the operations to the seq_file */
static const struct file_operations kreclaimd_stat_ops = {
        .owner = THIS_MODULE,
        .open = kreclaimd_open,
        .read = seq_read,
        .release = single_release
};

static struct file_operations kreclaimd_param_ops = 
{
	.owner = THIS_MODULE,
	.write = kreclaimd_write,
};

/* do when open the seq file */
int kreclaimd_open(struct inode *inode,struct file *file){
    single_open(file,kreclaimd_show,NULL);//bind seq_file with myshow function
    return 0;
}
/*description: output process's info to log */
int kreclaimd_show(struct seq_file *file,void *v){
	seq_printf(file,"KRECLAIMD Reclaimed Page Stats (By Yongkang ZHANG)\n");
	seq_printf(file,"=========== KRECLAIMD Current Configs ============\n");
	seq_printf(file,"Scan Period (ms): %d\n",scan_period_ms);
	seq_printf(file,"Page Cache Reclaim Age Threshold: %d\n",cache_reclaim_age_threshold);
	seq_printf(file,"Enable Reclaim Mapped Page Cache: %d\n",cache_enabled_unmap);
	seq_printf(file,"========= Page Cache Reclaimation Stats ==========\n");
	seq_printf(file,"Reclaimed Page Cache in Last Round: %d\n",stat_result_last_round);
	seq_printf(file,"Reclaimed Total Page Cache: %d\n",stat_result_total);
	return 0;
}

int len;
char *msg = NULL;

static ssize_t kreclaimd_write(struct file *filp, const char __user * buffer, size_t count, loff_t *pos)
{
	int i;
    char *data = PDE_DATA(file_inode(filp));

    if (count > DATA_SIZE) {
        return -EFAULT;
    }
    if (copy_from_user(data, buffer, count)) {
        return -EFAULT;
    }

    data[count-1] = '\0';
	int tmp_scan_period_m,tmp_cache_reclaim_age_threshold,tmp_cache_enabled_unmap=1;
	int scanned_cnt=sscanf(msg,"%d%d%d",&tmp_scan_period_m,&tmp_cache_reclaim_age_threshold,&tmp_cache_enabled_unmap);
	if(scanned_cnt!=3){
		printk(KERN_INFO "KRECLAIMD: wrong params num.");
	}else{
		scan_period_ms=tmp_scan_period_m;
		cache_reclaim_age_threshold=tmp_cache_reclaim_age_threshold;
		cache_enabled_unmap=tmp_cache_enabled_unmap;
		printk(KERN_INFO "KRECLAIMD: new params have been saved: %d %d %d", scan_period_ms,cache_reclaim_age_threshold,cache_enabled_unmap);
    }

    *pos = (int) count;
    len = count-1;

    return count;
}

int create_new_proc_entry(void) {
    int i;
    char *DATA = "Hello People";
	struct proc_dir_entry *proc;
    len = strlen(DATA);
    msg = kmalloc((size_t) DATA_SIZE, GFP_KERNEL); // +1 for \0

    if (msg != NULL) {
        printk(KERN_INFO "Allocated memory for msg");
    } else {
        return -1;
    }

    strncpy(msg, DATA, len+1);
    for (i=0; i < len +1 ; i++) {
        printk(KERN_INFO "%c", msg[i]);
        if (msg[i] == '\0') {
            printk(KERN_INFO "YES");
        }
    }
    proc = proc_create_data(FILENAME_PARAM, 0666, NULL, &kreclaimd_param_ops, msg);
    if (proc) {
        return 0;
    }
    return -1;
}


static void drop_pagecache_sb(struct super_block *sb, void *args)
{
	struct inode *inode, *toput_inode = NULL;
	int *stat_result=(int *)args;
	spin_lock(&sb->s_inode_list_lock);
	list_for_each_entry(inode, &sb->s_inodes, i_sb_list) {
		spin_lock(&inode->i_lock);
		if ((inode->i_state & (I_FREEING|I_WILL_FREE|I_NEW)) ||
		    (inode->i_mapping->nrpages == 0)) {
			spin_unlock(&inode->i_lock);
			continue;
		}
		__iget(inode);
		spin_unlock(&inode->i_lock);
		spin_unlock(&sb->s_inode_list_lock);

		*stat_result+=kreclaimd_invalidate_mapping_pages(inode->i_mapping, 0, -1,cache_reclaim_age_threshold,cache_enabled_unmap);
		iput(toput_inode);
		toput_inode = inode;

		spin_lock(&sb->s_inode_list_lock);
	}
	spin_unlock(&sb->s_inode_list_lock);
	iput(toput_inode);
}

//shrink_list
static int kreclaimd(void *p)
{
    struct pglist_data *pgdat = (struct pglist_data*)p;
	//struct zonelist *zonelist = node_zonelist(numa_node_id());
    struct scan_control sc = {
		.gfp_mask = GFP_KERNEL,
		.order = 0,
		.priority = DEF_PRIORITY,
		.may_writepage = !laptop_mode,
		.may_unmap = 1,
		.may_swap = 1,
	};
    //kswapd_shrink_node(pgdat,sc);
    for(;;){
		int stat_result=0;
		iterate_supers(drop_pagecache_sb, &stat_result);
		stat_result_total+=stat_result;
		stat_result_last_round=stat_result;
		//printk(KERN_WARNING "DEBUG: kreclaimd run a round: %d\n",stat_result);
		msleep(scan_period_ms);
    }
}

/*
 * This kreclaimd start function will be called by init and node-hot-add.
 * On node-hot-add, kswapd will moved to proper cpus if cpus are hot-added.
 */
int kreclaimd_run(int nid)
{
	struct pglist_data *pgdat = NODE_DATA(nid);
	int ret = 0;

	pgdat->kreclaimd = kthread_run(kreclaimd, pgdat, "kreclaimd%d", nid);
	if (IS_ERR(pgdat->kreclaimd)) {
		/* failure at boot is fatal */
		BUG_ON(system_state < SYSTEM_RUNNING);
		pr_err("Failed to start kreclaimd on node %d\n", nid);
		ret = PTR_ERR(pgdat->kreclaimd);
		pgdat->kreclaimd = NULL;
	}
	return ret;
}

static int __init kreclaimd_init(void)
{
	struct proc_dir_entry *kreclaimd_stat_file,*kreclaimd_param_file;
	kreclaimd_stat_file = proc_create(FILENAME_STAT,0440,NULL,&kreclaimd_stat_ops);//create proc file
    if(kreclaimd_stat_file == NULL) //deal with error
        return -ENOMEM;
	kreclaimd_param_file=proc_create(FILENAME_PARAM,0660,NULL,&kreclaimd_param_ops);
	create_new_proc_entry();
	int nid, ret;

	for_each_node_state(nid, N_MEMORY){
        kreclaimd_run(N_MEMORY);
    }
	return 0;
}

module_init(kreclaimd_init)