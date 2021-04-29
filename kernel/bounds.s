	.file	"bounds.c"
# GNU C89 (Ubuntu 7.5.0-6ubuntu2) version 7.5.0 (x86_64-linux-gnu)
#	compiled by GNU C version 7.5.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -nostdinc -I ./arch/x86/include
# -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi
# -I ./arch/x86/include/generated/uapi -I ./include/uapi
# -I ./include/generated/uapi -imultiarch x86_64-linux-gnu -D __KERNEL__
# -D CONFIG_AS_CFI=1 -D CONFIG_AS_CFI_SIGNAL_FRAME=1
# -D CONFIG_AS_CFI_SECTIONS=1 -D CONFIG_AS_FXSAVEQ=1 -D CONFIG_AS_SSSE3=1
# -D CONFIG_AS_CRC32=1 -D CONFIG_AS_AVX=1 -D CONFIG_AS_AVX2=1
# -D CONFIG_AS_AVX512=1 -D CONFIG_AS_SHA1_NI=1 -D CONFIG_AS_SHA256_NI=1
# -D CC_HAVE_ASM_GOTO -D KBUILD_BASENAME="bounds"
# -D KBUILD_MODNAME="bounds"
# -isystem /usr/lib/gcc/x86_64-linux-gnu/7/include
# -include ./include/linux/kconfig.h -MD kernel/.bounds.s.d kernel/bounds.c
# -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -m64 -mno-80387
# -mno-fp-ret-in-387 -mpreferred-stack-boundary=3 -mskip-rax-setup
# -mtune=generic -mno-red-zone -mcmodel=kernel -march=x86-64
# -auxbase-strip kernel/bounds.s -g -O2 -Wall -Wundef -Wstrict-prototypes
# -Wno-trigraphs -Werror=implicit-function-declaration -Wno-format-security
# -Wno-sign-compare -Wno-frame-address -Wformat-truncation=0
# -Wformat-overflow=0 -Wno-int-in-bool-context -Wframe-larger-than=1024
# -Wno-unused-but-set-variable -Wunused-const-variable=0
# -Wdeclaration-after-statement -Wno-pointer-sign -Werror=implicit-int
# -Werror=strict-prototypes -Werror=date-time
# -Werror=incompatible-pointer-types -Werror=designated-init -std=gnu90
# -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE -falign-jumps=1
# -falign-loops=1 -funit-at-a-time -fno-asynchronous-unwind-tables
# -fno-delete-null-pointer-checks -fno-stack-protector
# -fno-omit-frame-pointer -fno-optimize-sibling-calls
# -fno-var-tracking-assignments -fno-strict-overflow -fstack-check=no
# -fconserve-stack -fverbose-asm --param allow-store-data-races=0
# options enabled:  -faggressive-loop-optimizations -falign-labels
# -fauto-inc-dec -fbranch-count-reg -fcaller-saves
# -fchkp-check-incomplete-type -fchkp-check-read -fchkp-check-write
# -fchkp-instrument-calls -fchkp-narrow-bounds -fchkp-optimize
# -fchkp-store-bounds -fchkp-use-static-bounds
# -fchkp-use-static-const-bounds -fchkp-use-wrappers -fcode-hoisting
# -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
# -fcrossjumping -fcse-follow-jumps -fdefer-pop -fdevirtualize
# -fdevirtualize-speculatively -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -fexpensive-optimizations
# -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse -fgcse
# -fgcse-lm -fgnu-runtime -fgnu-unique -fguess-branch-probability
# -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
# -findirect-inlining -finline -finline-atomics
# -finline-functions-called-once -finline-small-functions -fipa-bit-cp
# -fipa-cp -fipa-icf -fipa-icf-functions -fipa-icf-variables -fipa-profile
# -fipa-pure-const -fipa-ra -fipa-reference -fipa-sra -fipa-vrp
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
# -fmath-errno -fmerge-constants -fmerge-debug-strings
# -fmove-loop-invariants -foptimize-strlen -fpartial-inlining -fpeephole
# -fpeephole2 -fplt -fprefetch-loop-arrays -free -freg-struct-return
# -freorder-blocks -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fschedule-insns2
# -fsemantic-interposition -fshow-column -fshrink-wrap
# -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
# -fsplit-wide-types -fssa-backprop -fssa-phiopt -fstdarg-opt
# -fstore-merging -fstrict-volatile-bitfields -fsync-libcalls
# -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
# -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
# -ftree-copy-prop -ftree-cselim -ftree-dce -ftree-dominator-opts
# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
# -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
# -ftree-parallelize-loops= -ftree-phiprop -ftree-pre -ftree-pta
# -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra
# -ftree-switch-conversion -ftree-tail-merge -ftree-ter -ftree-vrp
# -funit-at-a-time -fvar-tracking -fverbose-asm -fzero-initialized-in-bss
# -m128bit-long-double -m64 -malign-stringops -mavx256-split-unaligned-load
# -mavx256-split-unaligned-store -mfxsr -mglibc -mieee-fp -mlong-double-80
# -mno-fancy-math-387 -mno-red-zone -mno-sse4 -mpush-args -mskip-rax-setup
# -mtls-direct-seg-refs -mvzeroupper

	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.p2align 4,,15
	.globl	foo
	.type	foo, @function
foo:
.LFB154:
	.file 1 "kernel/bounds.c"
	.loc 1 17 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# kernel/bounds.c:19: 	DEFINE(NR_PAGEFLAGS, __NR_PAGEFLAGS);
	.loc 1 19 0
#APP
# 19 "kernel/bounds.c" 1
	
.ascii "->NR_PAGEFLAGS $23 __NR_PAGEFLAGS"	#
# 0 "" 2
# kernel/bounds.c:20: 	DEFINE(MAX_NR_ZONES, __MAX_NR_ZONES);
	.loc 1 20 0
# 20 "kernel/bounds.c" 1
	
.ascii "->MAX_NR_ZONES $3 __MAX_NR_ZONES"	#
# 0 "" 2
# kernel/bounds.c:24: 	DEFINE(SPINLOCK_SIZE, sizeof(spinlock_t));
	.loc 1 24 0
# 24 "kernel/bounds.c" 1
	
.ascii "->SPINLOCK_SIZE $0 sizeof(spinlock_t)"	#
# 0 "" 2
# kernel/bounds.c:26: }
	.loc 1 26 0
#NO_APP
	popq	%rbp	#
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE154:
	.size	foo, .-foo
.Letext0:
	.file 2 "./include/linux/types.h"
	.file 3 "./arch/x86/include/asm/alternative.h"
	.file 4 "./arch/x86/include/asm/nops.h"
	.file 5 "./include/linux/init.h"
	.file 6 "./include/linux/printk.h"
	.file 7 "./include/linux/kernel.h"
	.file 8 "./include/linux/page-flags.h"
	.file 9 "./include/linux/mmzone.h"
	.file 10 "./include/linux/lockdep.h"
	.file 11 "./arch/x86/include/asm/asm.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4b5
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF106
	.byte	0x1
	.long	.LASF107
	.long	.LASF108
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.long	0x34
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x3
	.long	0x71
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x5
	.byte	0x8
	.long	0x71
	.uleb128 0x6
	.long	.LASF11
	.byte	0x2
	.byte	0x1e
	.long	0x95
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF10
	.uleb128 0x7
	.byte	0x4
	.byte	0x2
	.byte	0xb0
	.long	0xb1
	.uleb128 0x8
	.long	.LASF57
	.byte	0x2
	.byte	0xb1
	.long	0x4e
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	.LASF12
	.byte	0x2
	.byte	0xb2
	.long	0x9c
	.uleb128 0x9
	.long	.LASF109
	.byte	0xb
	.byte	0x92
	.long	0x6a
	.uleb128 0xa
	.long	.LASF13
	.byte	0x3
	.byte	0x3d
	.long	0x4e
	.uleb128 0xa
	.long	.LASF14
	.byte	0x4
	.byte	0x8f
	.long	0xdd
	.uleb128 0x5
	.byte	0x8
	.long	0xe9
	.uleb128 0x5
	.byte	0x8
	.long	0x3b
	.uleb128 0x3
	.long	0xe3
	.uleb128 0x6
	.long	.LASF15
	.byte	0x5
	.byte	0x6d
	.long	0xf9
	.uleb128 0x5
	.byte	0x8
	.long	0xff
	.uleb128 0xb
	.long	0x4e
	.uleb128 0x5
	.byte	0x8
	.long	0x10a
	.uleb128 0xc
	.uleb128 0xd
	.long	0xee
	.long	0x116
	.uleb128 0xe
	.byte	0
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.byte	0x70
	.long	0x10b
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.byte	0x70
	.long	0x10b
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0x71
	.long	0x10b
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0x71
	.long	0x10b
	.uleb128 0xd
	.long	0x71
	.long	0x14d
	.uleb128 0xe
	.byte	0
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.byte	0x78
	.long	0x142
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0x79
	.long	0x84
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x7a
	.long	0x55
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x83
	.long	0x8a
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x89
	.long	0x104
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x8b
	.long	0x8a
	.uleb128 0xd
	.long	0x78
	.long	0x19a
	.uleb128 0xe
	.byte	0
	.uleb128 0x3
	.long	0x18f
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.byte	0xb
	.long	0x19a
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.byte	0xc
	.long	0x19a
	.uleb128 0xd
	.long	0x4e
	.long	0x1c0
	.uleb128 0xe
	.byte	0
	.uleb128 0xa
	.long	.LASF28
	.byte	0x6
	.byte	0x3f
	.long	0x1b5
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.byte	0x53
	.long	0x142
	.uleb128 0xa
	.long	.LASF30
	.byte	0x6
	.byte	0xbc
	.long	0x4e
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.byte	0xbd
	.long	0x4e
	.uleb128 0xf
	.long	.LASF32
	.byte	0x6
	.value	0x118
	.long	0x4e
	.uleb128 0x10
	.long	.LASF34
	.uleb128 0x3
	.long	0x1f8
	.uleb128 0xf
	.long	.LASF33
	.byte	0x6
	.value	0x1da
	.long	0x1fd
	.uleb128 0x10
	.long	.LASF35
	.uleb128 0xf
	.long	.LASF36
	.byte	0x7
	.value	0x122
	.long	0x20e
	.uleb128 0x11
	.long	0x7d
	.long	0x22e
	.uleb128 0x12
	.long	0x4e
	.byte	0
	.uleb128 0xf
	.long	.LASF37
	.byte	0x7
	.value	0x123
	.long	0x23a
	.uleb128 0x5
	.byte	0x8
	.long	0x21f
	.uleb128 0xf
	.long	.LASF38
	.byte	0x7
	.value	0x1e3
	.long	0x4e
	.uleb128 0xf
	.long	.LASF39
	.byte	0x7
	.value	0x1e4
	.long	0x4e
	.uleb128 0xf
	.long	.LASF40
	.byte	0x7
	.value	0x1e5
	.long	0x4e
	.uleb128 0xf
	.long	.LASF41
	.byte	0x7
	.value	0x1e6
	.long	0x4e
	.uleb128 0xf
	.long	.LASF42
	.byte	0x7
	.value	0x1e7
	.long	0x4e
	.uleb128 0xf
	.long	.LASF43
	.byte	0x7
	.value	0x1e8
	.long	0x4e
	.uleb128 0xf
	.long	.LASF44
	.byte	0x7
	.value	0x1e9
	.long	0x4e
	.uleb128 0xf
	.long	.LASF45
	.byte	0x7
	.value	0x1ea
	.long	0x4e
	.uleb128 0xf
	.long	.LASF46
	.byte	0x7
	.value	0x1ec
	.long	0x8a
	.uleb128 0xf
	.long	.LASF47
	.byte	0x7
	.value	0x1f3
	.long	0xb1
	.uleb128 0xf
	.long	.LASF48
	.byte	0x7
	.value	0x207
	.long	0x4e
	.uleb128 0xf
	.long	.LASF49
	.byte	0x7
	.value	0x209
	.long	0x8a
	.uleb128 0x13
	.long	.LASF64
	.byte	0x7
	.byte	0x4
	.long	0x55
	.byte	0x7
	.value	0x20f
	.long	0x307
	.uleb128 0x14
	.long	.LASF50
	.byte	0
	.uleb128 0x14
	.long	.LASF51
	.byte	0x1
	.uleb128 0x14
	.long	.LASF52
	.byte	0x2
	.uleb128 0x14
	.long	.LASF53
	.byte	0x3
	.uleb128 0x14
	.long	.LASF54
	.byte	0x4
	.uleb128 0x14
	.long	.LASF55
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.long	.LASF56
	.byte	0x7
	.value	0x216
	.long	0x2d0
	.uleb128 0x15
	.long	.LASF110
	.byte	0x3
	.byte	0x7
	.value	0x22b
	.long	0x348
	.uleb128 0x16
	.long	.LASF58
	.byte	0x7
	.value	0x22c
	.long	0x71
	.byte	0
	.uleb128 0x16
	.long	.LASF59
	.byte	0x7
	.value	0x22d
	.long	0x71
	.byte	0x1
	.uleb128 0x16
	.long	.LASF60
	.byte	0x7
	.value	0x22e
	.long	0x8a
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	0x313
	.uleb128 0xd
	.long	0x348
	.long	0x35d
	.uleb128 0x17
	.long	0x6a
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	0x34d
	.uleb128 0xf
	.long	.LASF61
	.byte	0x7
	.value	0x231
	.long	0x35d
	.uleb128 0xf
	.long	.LASF62
	.byte	0x7
	.value	0x233
	.long	0x19a
	.uleb128 0xf
	.long	.LASF63
	.byte	0x7
	.value	0x23e
	.long	0x19a
	.uleb128 0x18
	.long	.LASF65
	.byte	0x7
	.byte	0x4
	.long	0x55
	.byte	0x8
	.byte	0x4b
	.long	0x45e
	.uleb128 0x14
	.long	.LASF66
	.byte	0
	.uleb128 0x14
	.long	.LASF67
	.byte	0x1
	.uleb128 0x14
	.long	.LASF68
	.byte	0x2
	.uleb128 0x14
	.long	.LASF69
	.byte	0x3
	.uleb128 0x14
	.long	.LASF70
	.byte	0x4
	.uleb128 0x14
	.long	.LASF71
	.byte	0x5
	.uleb128 0x14
	.long	.LASF72
	.byte	0x6
	.uleb128 0x14
	.long	.LASF73
	.byte	0x7
	.uleb128 0x14
	.long	.LASF74
	.byte	0x8
	.uleb128 0x14
	.long	.LASF75
	.byte	0x9
	.uleb128 0x14
	.long	.LASF76
	.byte	0xa
	.uleb128 0x14
	.long	.LASF77
	.byte	0xb
	.uleb128 0x14
	.long	.LASF78
	.byte	0xc
	.uleb128 0x14
	.long	.LASF79
	.byte	0xd
	.uleb128 0x14
	.long	.LASF80
	.byte	0xe
	.uleb128 0x14
	.long	.LASF81
	.byte	0xf
	.uleb128 0x14
	.long	.LASF82
	.byte	0x10
	.uleb128 0x14
	.long	.LASF83
	.byte	0x11
	.uleb128 0x14
	.long	.LASF84
	.byte	0x12
	.uleb128 0x14
	.long	.LASF85
	.byte	0x13
	.uleb128 0x14
	.long	.LASF86
	.byte	0x14
	.uleb128 0x14
	.long	.LASF87
	.byte	0x15
	.uleb128 0x14
	.long	.LASF88
	.byte	0x16
	.uleb128 0x14
	.long	.LASF89
	.byte	0x17
	.uleb128 0x14
	.long	.LASF90
	.byte	0x9
	.uleb128 0x14
	.long	.LASF91
	.byte	0x9
	.uleb128 0x14
	.long	.LASF92
	.byte	0xd
	.uleb128 0x14
	.long	.LASF93
	.byte	0x9
	.uleb128 0x14
	.long	.LASF94
	.byte	0x4
	.uleb128 0x14
	.long	.LASF95
	.byte	0x9
	.uleb128 0x14
	.long	.LASF96
	.byte	0xc
	.uleb128 0x14
	.long	.LASF97
	.byte	0xd
	.uleb128 0x14
	.long	.LASF98
	.byte	0x11
	.byte	0
	.uleb128 0x13
	.long	.LASF99
	.byte	0x7
	.byte	0x4
	.long	0x55
	.byte	0x9
	.value	0x12d
	.long	0x489
	.uleb128 0x14
	.long	.LASF100
	.byte	0
	.uleb128 0x14
	.long	.LASF101
	.byte	0x1
	.uleb128 0x14
	.long	.LASF102
	.byte	0x2
	.uleb128 0x14
	.long	.LASF103
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.long	.LASF104
	.byte	0xa
	.byte	0x11
	.long	0x4e
	.uleb128 0xa
	.long	.LASF105
	.byte	0xa
	.byte	0x12
	.long	0x4e
	.uleb128 0x19
	.string	"foo"
	.byte	0x1
	.byte	0x10
	.quad	.LFB154
	.quad	.LFE154-.LFB154
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF90:
	.string	"PG_checked"
.LASF25:
	.string	"initcall_debug"
.LASF99:
	.string	"zone_type"
.LASF33:
	.string	"kmsg_fops"
.LASF63:
	.string	"hex_asc_upper"
.LASF26:
	.string	"linux_banner"
.LASF41:
	.string	"panic_on_unrecovered_nmi"
.LASF6:
	.string	"long long unsigned int"
.LASF55:
	.string	"SYSTEM_RESTART"
.LASF37:
	.string	"panic_blink"
.LASF53:
	.string	"SYSTEM_HALT"
.LASF88:
	.string	"PG_idle"
.LASF89:
	.string	"__NR_PAGEFLAGS"
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF19:
	.string	"__security_initcall_end"
.LASF21:
	.string	"saved_command_line"
.LASF44:
	.string	"sysctl_panic_on_rcu_stall"
.LASF79:
	.string	"PG_private_2"
.LASF50:
	.string	"SYSTEM_BOOTING"
.LASF65:
	.string	"pageflags"
.LASF107:
	.string	"kernel/bounds.c"
.LASF51:
	.string	"SYSTEM_SCHEDULING"
.LASF13:
	.string	"alternatives_patched"
.LASF9:
	.string	"long int"
.LASF43:
	.string	"panic_on_warn"
.LASF110:
	.string	"taint_flag"
.LASF76:
	.string	"PG_arch_1"
.LASF47:
	.string	"panic_cpu"
.LASF27:
	.string	"linux_proc_banner"
.LASF46:
	.string	"crash_kexec_post_notifiers"
.LASF66:
	.string	"PG_locked"
.LASF71:
	.string	"PG_lru"
.LASF68:
	.string	"PG_referenced"
.LASF15:
	.string	"initcall_t"
.LASF108:
	.string	"/home/yongkangzhang/minimal-linux-with-cold-page-reclaim"
.LASF34:
	.string	"file_operations"
.LASF100:
	.string	"ZONE_DMA32"
.LASF98:
	.string	"PG_isolated"
.LASF4:
	.string	"unsigned int"
.LASF78:
	.string	"PG_private"
.LASF48:
	.string	"root_mountflags"
.LASF61:
	.string	"taint_flags"
.LASF7:
	.string	"long unsigned int"
.LASF32:
	.string	"kptr_restrict"
.LASF35:
	.string	"atomic_notifier_head"
.LASF28:
	.string	"console_printk"
.LASF52:
	.string	"SYSTEM_RUNNING"
.LASF3:
	.string	"short unsigned int"
.LASF23:
	.string	"rodata_enabled"
.LASF11:
	.string	"bool"
.LASF94:
	.string	"PG_savepinned"
.LASF31:
	.string	"dmesg_restrict"
.LASF17:
	.string	"__con_initcall_end"
.LASF104:
	.string	"prove_locking"
.LASF58:
	.string	"c_true"
.LASF83:
	.string	"PG_reclaim"
.LASF59:
	.string	"c_false"
.LASF67:
	.string	"PG_error"
.LASF93:
	.string	"PG_pinned"
.LASF45:
	.string	"sysctl_panic_on_stackoverflow"
.LASF22:
	.string	"reset_devices"
.LASF56:
	.string	"system_state"
.LASF80:
	.string	"PG_writeback"
.LASF105:
	.string	"lock_stat"
.LASF86:
	.string	"PG_mlocked"
.LASF39:
	.string	"panic_timeout"
.LASF97:
	.string	"PG_double_map"
.LASF102:
	.string	"ZONE_MOVABLE"
.LASF18:
	.string	"__security_initcall_start"
.LASF36:
	.string	"panic_notifier_list"
.LASF82:
	.string	"PG_mappedtodisk"
.LASF101:
	.string	"ZONE_NORMAL"
.LASF69:
	.string	"PG_uptodate"
.LASF10:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF64:
	.string	"system_states"
.LASF91:
	.string	"PG_swapcache"
.LASF109:
	.string	"current_stack_pointer"
.LASF2:
	.string	"short int"
.LASF57:
	.string	"counter"
.LASF106:
	.ascii	"GNU C89 7.5.0 -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-av"
	.ascii	"x -m64 -mno-80387 -mno-fp-ret-in-387 -mpreferred-stack-bound"
	.ascii	"ary=3 -mskip-rax-setup -mtune=generic -mno-red-zone -mcmodel"
	.ascii	"=kernel -march=x86-64 -g -O2 -std=gnu90 -fno-strict-aliasing"
	.ascii	" -fno-common -fshort-wchar -fno-PIE -falign-jumps=1 -falign-"
	.ascii	"loops=1 -funit-at-a-tim"
	.string	"e -fno-asynchronous-unwind-tables -fno-delete-null-pointer-checks -fno-stack-protector -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -fno-strict-overflow -fstack-check=no -fconserve-stack --param allow-store-data-races=0"
.LASF60:
	.string	"module"
.LASF74:
	.string	"PG_slab"
.LASF103:
	.string	"__MAX_NR_ZONES"
.LASF70:
	.string	"PG_dirty"
.LASF54:
	.string	"SYSTEM_POWER_OFF"
.LASF38:
	.string	"oops_in_progress"
.LASF8:
	.string	"char"
.LASF12:
	.string	"atomic_t"
.LASF81:
	.string	"PG_head"
.LASF87:
	.string	"PG_young"
.LASF96:
	.string	"PG_slob_free"
.LASF85:
	.string	"PG_unevictable"
.LASF40:
	.string	"panic_on_oops"
.LASF20:
	.string	"boot_command_line"
.LASF75:
	.string	"PG_owner_priv_1"
.LASF30:
	.string	"printk_delay_msec"
.LASF49:
	.string	"early_boot_irqs_disabled"
.LASF42:
	.string	"panic_on_io_nmi"
.LASF77:
	.string	"PG_reserved"
.LASF14:
	.string	"ideal_nops"
.LASF72:
	.string	"PG_active"
.LASF62:
	.string	"hex_asc"
.LASF92:
	.string	"PG_fscache"
.LASF95:
	.string	"PG_foreign"
.LASF16:
	.string	"__con_initcall_start"
.LASF73:
	.string	"PG_waiters"
.LASF24:
	.string	"late_time_init"
.LASF84:
	.string	"PG_swapbacked"
.LASF29:
	.string	"devkmsg_log_str"
	.ident	"GCC: (Ubuntu 7.5.0-6ubuntu2) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
