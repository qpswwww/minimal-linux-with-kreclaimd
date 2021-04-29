	.file	"devicetable-offsets.c"
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
# -D CC_HAVE_ASM_GOTO -D KBUILD_BASENAME="devicetable_offsets"
# -D KBUILD_MODNAME="devicetable_offsets"
# -isystem /usr/lib/gcc/x86_64-linux-gnu/7/include
# -include ./include/linux/kconfig.h
# -MD scripts/mod/.devicetable-offsets.s.d
# scripts/mod/devicetable-offsets.c -mno-sse -mno-mmx -mno-sse2 -mno-3dnow
# -mno-avx -m64 -mno-80387 -mno-fp-ret-in-387 -mpreferred-stack-boundary=3
# -mskip-rax-setup -mtune=generic -mno-red-zone -mcmodel=kernel
# -march=x86-64 -auxbase-strip scripts/mod/devicetable-offsets.s -g -O2
# -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
# -Werror=implicit-function-declaration -Wno-format-security
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
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB308:
	.file 1 "scripts/mod/devicetable-offsets.c"
	.loc 1 10 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# scripts/mod/devicetable-offsets.c:11: 	DEVID(usb_device_id);
	.loc 1 11 0
#APP
# 11 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_usb_device_id $32 sizeof(struct usb_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:12: 	DEVID_FIELD(usb_device_id, match_flags);
	.loc 1 12 0
# 12 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_usb_device_id_match_flags $0 offsetof(struct usb_device_id, match_flags)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:13: 	DEVID_FIELD(usb_device_id, idVendor);
	.loc 1 13 0
# 13 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_usb_device_id_idVendor $2 offsetof(struct usb_device_id, idVendor)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:14: 	DEVID_FIELD(usb_device_id, idProduct);
	.loc 1 14 0
# 14 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_usb_device_id_idProduct $4 offsetof(struct usb_device_id, idProduct)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:15: 	DEVID_FIELD(usb_device_id, bcdDevice_lo);
	.loc 1 15 0
# 15 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_usb_device_id_bcdDevice_lo $6 offsetof(struct usb_device_id, bcdDevice_lo)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:16: 	DEVID_FIELD(usb_device_id, bcdDevice_hi);
	.loc 1 16 0
# 16 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_usb_device_id_bcdDevice_hi $8 offsetof(struct usb_device_id, bcdDevice_hi)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:17: 	DEVID_FIELD(usb_device_id, bDeviceClass);
	.loc 1 17 0
# 17 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_usb_device_id_bDeviceClass $10 offsetof(struct usb_device_id, bDeviceClass)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:18: 	DEVID_FIELD(usb_device_id, bDeviceSubClass);
	.loc 1 18 0
# 18 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_usb_device_id_bDeviceSubClass $11 offsetof(struct usb_device_id, bDeviceSubClass)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:19: 	DEVID_FIELD(usb_device_id, bDeviceProtocol);
	.loc 1 19 0
# 19 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_usb_device_id_bDeviceProtocol $12 offsetof(struct usb_device_id, bDeviceProtocol)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:20: 	DEVID_FIELD(usb_device_id, bInterfaceClass);
	.loc 1 20 0
# 20 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_usb_device_id_bInterfaceClass $13 offsetof(struct usb_device_id, bInterfaceClass)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:21: 	DEVID_FIELD(usb_device_id, bInterfaceSubClass);
	.loc 1 21 0
# 21 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_usb_device_id_bInterfaceSubClass $14 offsetof(struct usb_device_id, bInterfaceSubClass)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:22: 	DEVID_FIELD(usb_device_id, bInterfaceProtocol);
	.loc 1 22 0
# 22 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_usb_device_id_bInterfaceProtocol $15 offsetof(struct usb_device_id, bInterfaceProtocol)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:23: 	DEVID_FIELD(usb_device_id, bInterfaceNumber);
	.loc 1 23 0
# 23 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_usb_device_id_bInterfaceNumber $16 offsetof(struct usb_device_id, bInterfaceNumber)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:25: 	DEVID(hid_device_id);
	.loc 1 25 0
# 25 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_hid_device_id $24 sizeof(struct hid_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:26: 	DEVID_FIELD(hid_device_id, bus);
	.loc 1 26 0
# 26 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_hid_device_id_bus $0 offsetof(struct hid_device_id, bus)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:27: 	DEVID_FIELD(hid_device_id, group);
	.loc 1 27 0
# 27 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_hid_device_id_group $2 offsetof(struct hid_device_id, group)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:28: 	DEVID_FIELD(hid_device_id, vendor);
	.loc 1 28 0
# 28 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_hid_device_id_vendor $4 offsetof(struct hid_device_id, vendor)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:29: 	DEVID_FIELD(hid_device_id, product);
	.loc 1 29 0
# 29 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_hid_device_id_product $8 offsetof(struct hid_device_id, product)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:31: 	DEVID(ieee1394_device_id);
	.loc 1 31 0
# 31 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_ieee1394_device_id $32 sizeof(struct ieee1394_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:32: 	DEVID_FIELD(ieee1394_device_id, match_flags);
	.loc 1 32 0
# 32 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_ieee1394_device_id_match_flags $0 offsetof(struct ieee1394_device_id, match_flags)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:33: 	DEVID_FIELD(ieee1394_device_id, vendor_id);
	.loc 1 33 0
# 33 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_ieee1394_device_id_vendor_id $4 offsetof(struct ieee1394_device_id, vendor_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:34: 	DEVID_FIELD(ieee1394_device_id, model_id);
	.loc 1 34 0
# 34 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_ieee1394_device_id_model_id $8 offsetof(struct ieee1394_device_id, model_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:35: 	DEVID_FIELD(ieee1394_device_id, specifier_id);
	.loc 1 35 0
# 35 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_ieee1394_device_id_specifier_id $12 offsetof(struct ieee1394_device_id, specifier_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:36: 	DEVID_FIELD(ieee1394_device_id, version);
	.loc 1 36 0
# 36 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_ieee1394_device_id_version $16 offsetof(struct ieee1394_device_id, version)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:38: 	DEVID(pci_device_id);
	.loc 1 38 0
# 38 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_pci_device_id $32 sizeof(struct pci_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:39: 	DEVID_FIELD(pci_device_id, vendor);
	.loc 1 39 0
# 39 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_pci_device_id_vendor $0 offsetof(struct pci_device_id, vendor)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:40: 	DEVID_FIELD(pci_device_id, device);
	.loc 1 40 0
# 40 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_pci_device_id_device $4 offsetof(struct pci_device_id, device)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:41: 	DEVID_FIELD(pci_device_id, subvendor);
	.loc 1 41 0
# 41 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_pci_device_id_subvendor $8 offsetof(struct pci_device_id, subvendor)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:42: 	DEVID_FIELD(pci_device_id, subdevice);
	.loc 1 42 0
# 42 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_pci_device_id_subdevice $12 offsetof(struct pci_device_id, subdevice)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:43: 	DEVID_FIELD(pci_device_id, class);
	.loc 1 43 0
# 43 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_pci_device_id_class $16 offsetof(struct pci_device_id, class)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:44: 	DEVID_FIELD(pci_device_id, class_mask);
	.loc 1 44 0
# 44 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_pci_device_id_class_mask $20 offsetof(struct pci_device_id, class_mask)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:46: 	DEVID(ccw_device_id);
	.loc 1 46 0
# 46 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_ccw_device_id $16 sizeof(struct ccw_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:47: 	DEVID_FIELD(ccw_device_id, match_flags);
	.loc 1 47 0
# 47 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_ccw_device_id_match_flags $0 offsetof(struct ccw_device_id, match_flags)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:48: 	DEVID_FIELD(ccw_device_id, cu_type);
	.loc 1 48 0
# 48 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_ccw_device_id_cu_type $2 offsetof(struct ccw_device_id, cu_type)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:49: 	DEVID_FIELD(ccw_device_id, cu_model);
	.loc 1 49 0
# 49 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_ccw_device_id_cu_model $6 offsetof(struct ccw_device_id, cu_model)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:50: 	DEVID_FIELD(ccw_device_id, dev_type);
	.loc 1 50 0
# 50 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_ccw_device_id_dev_type $4 offsetof(struct ccw_device_id, dev_type)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:51: 	DEVID_FIELD(ccw_device_id, dev_model);
	.loc 1 51 0
# 51 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_ccw_device_id_dev_model $7 offsetof(struct ccw_device_id, dev_model)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:53: 	DEVID(ap_device_id);
	.loc 1 53 0
# 53 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_ap_device_id $16 sizeof(struct ap_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:54: 	DEVID_FIELD(ap_device_id, dev_type);
	.loc 1 54 0
# 54 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_ap_device_id_dev_type $2 offsetof(struct ap_device_id, dev_type)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:56: 	DEVID(css_device_id);
	.loc 1 56 0
# 56 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_css_device_id $16 sizeof(struct css_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:57: 	DEVID_FIELD(css_device_id, type);
	.loc 1 57 0
# 57 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_css_device_id_type $1 offsetof(struct css_device_id, type)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:59: 	DEVID(serio_device_id);
	.loc 1 59 0
# 59 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_serio_device_id $4 sizeof(struct serio_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:60: 	DEVID_FIELD(serio_device_id, type);
	.loc 1 60 0
# 60 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_serio_device_id_type $0 offsetof(struct serio_device_id, type)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:61: 	DEVID_FIELD(serio_device_id, proto);
	.loc 1 61 0
# 61 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_serio_device_id_proto $3 offsetof(struct serio_device_id, proto)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:62: 	DEVID_FIELD(serio_device_id, id);
	.loc 1 62 0
# 62 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_serio_device_id_id $2 offsetof(struct serio_device_id, id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:63: 	DEVID_FIELD(serio_device_id, extra);
	.loc 1 63 0
# 63 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_serio_device_id_extra $1 offsetof(struct serio_device_id, extra)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:65: 	DEVID(acpi_device_id);
	.loc 1 65 0
# 65 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_acpi_device_id $32 sizeof(struct acpi_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:66: 	DEVID_FIELD(acpi_device_id, id);
	.loc 1 66 0
# 66 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_acpi_device_id_id $0 offsetof(struct acpi_device_id, id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:67: 	DEVID_FIELD(acpi_device_id, cls);
	.loc 1 67 0
# 67 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_acpi_device_id_cls $24 offsetof(struct acpi_device_id, cls)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:68: 	DEVID_FIELD(acpi_device_id, cls_msk);
	.loc 1 68 0
# 68 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_acpi_device_id_cls_msk $28 offsetof(struct acpi_device_id, cls_msk)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:70: 	DEVID(pnp_device_id);
	.loc 1 70 0
# 70 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_pnp_device_id $16 sizeof(struct pnp_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:71: 	DEVID_FIELD(pnp_device_id, id);
	.loc 1 71 0
# 71 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_pnp_device_id_id $0 offsetof(struct pnp_device_id, id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:73: 	DEVID(pnp_card_device_id);
	.loc 1 73 0
# 73 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_pnp_card_device_id $80 sizeof(struct pnp_card_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:74: 	DEVID_FIELD(pnp_card_device_id, devs);
	.loc 1 74 0
# 74 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_pnp_card_device_id_devs $16 offsetof(struct pnp_card_device_id, devs)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:76: 	DEVID(pcmcia_device_id);
	.loc 1 76 0
# 76 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_pcmcia_device_id $80 sizeof(struct pcmcia_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:77: 	DEVID_FIELD(pcmcia_device_id, match_flags);
	.loc 1 77 0
# 77 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_pcmcia_device_id_match_flags $0 offsetof(struct pcmcia_device_id, match_flags)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:78: 	DEVID_FIELD(pcmcia_device_id, manf_id);
	.loc 1 78 0
# 78 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_pcmcia_device_id_manf_id $2 offsetof(struct pcmcia_device_id, manf_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:79: 	DEVID_FIELD(pcmcia_device_id, card_id);
	.loc 1 79 0
# 79 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_pcmcia_device_id_card_id $4 offsetof(struct pcmcia_device_id, card_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:80: 	DEVID_FIELD(pcmcia_device_id, func_id);
	.loc 1 80 0
# 80 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_pcmcia_device_id_func_id $6 offsetof(struct pcmcia_device_id, func_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:81: 	DEVID_FIELD(pcmcia_device_id, function);
	.loc 1 81 0
# 81 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_pcmcia_device_id_function $7 offsetof(struct pcmcia_device_id, function)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:82: 	DEVID_FIELD(pcmcia_device_id, device_no);
	.loc 1 82 0
# 82 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_pcmcia_device_id_device_no $8 offsetof(struct pcmcia_device_id, device_no)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:83: 	DEVID_FIELD(pcmcia_device_id, prod_id_hash);
	.loc 1 83 0
# 83 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_pcmcia_device_id_prod_id_hash $12 offsetof(struct pcmcia_device_id, prod_id_hash)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:85: 	DEVID(of_device_id);
	.loc 1 85 0
# 85 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_of_device_id $200 sizeof(struct of_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:86: 	DEVID_FIELD(of_device_id, name);
	.loc 1 86 0
# 86 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_of_device_id_name $0 offsetof(struct of_device_id, name)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:87: 	DEVID_FIELD(of_device_id, type);
	.loc 1 87 0
# 87 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_of_device_id_type $32 offsetof(struct of_device_id, type)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:88: 	DEVID_FIELD(of_device_id, compatible);
	.loc 1 88 0
# 88 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_of_device_id_compatible $64 offsetof(struct of_device_id, compatible)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:90: 	DEVID(vio_device_id);
	.loc 1 90 0
# 90 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_vio_device_id $64 sizeof(struct vio_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:91: 	DEVID_FIELD(vio_device_id, type);
	.loc 1 91 0
# 91 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_vio_device_id_type $0 offsetof(struct vio_device_id, type)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:92: 	DEVID_FIELD(vio_device_id, compat);
	.loc 1 92 0
# 92 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_vio_device_id_compat $32 offsetof(struct vio_device_id, compat)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:94: 	DEVID(input_device_id);
	.loc 1 94 0
# 94 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_input_device_id $200 sizeof(struct input_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:95: 	DEVID_FIELD(input_device_id, flags);
	.loc 1 95 0
# 95 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_input_device_id_flags $0 offsetof(struct input_device_id, flags)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:96: 	DEVID_FIELD(input_device_id, bustype);
	.loc 1 96 0
# 96 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_input_device_id_bustype $8 offsetof(struct input_device_id, bustype)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:97: 	DEVID_FIELD(input_device_id, vendor);
	.loc 1 97 0
# 97 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_input_device_id_vendor $10 offsetof(struct input_device_id, vendor)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:98: 	DEVID_FIELD(input_device_id, product);
	.loc 1 98 0
# 98 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_input_device_id_product $12 offsetof(struct input_device_id, product)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:99: 	DEVID_FIELD(input_device_id, version);
	.loc 1 99 0
# 99 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_input_device_id_version $14 offsetof(struct input_device_id, version)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:100: 	DEVID_FIELD(input_device_id, evbit);
	.loc 1 100 0
# 100 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_input_device_id_evbit $16 offsetof(struct input_device_id, evbit)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:101: 	DEVID_FIELD(input_device_id, keybit);
	.loc 1 101 0
# 101 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_input_device_id_keybit $24 offsetof(struct input_device_id, keybit)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:102: 	DEVID_FIELD(input_device_id, relbit);
	.loc 1 102 0
# 102 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_input_device_id_relbit $120 offsetof(struct input_device_id, relbit)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:103: 	DEVID_FIELD(input_device_id, absbit);
	.loc 1 103 0
# 103 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_input_device_id_absbit $128 offsetof(struct input_device_id, absbit)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:104: 	DEVID_FIELD(input_device_id, mscbit);
	.loc 1 104 0
# 104 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_input_device_id_mscbit $136 offsetof(struct input_device_id, mscbit)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:105: 	DEVID_FIELD(input_device_id, ledbit);
	.loc 1 105 0
# 105 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_input_device_id_ledbit $144 offsetof(struct input_device_id, ledbit)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:106: 	DEVID_FIELD(input_device_id, sndbit);
	.loc 1 106 0
# 106 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_input_device_id_sndbit $152 offsetof(struct input_device_id, sndbit)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:107: 	DEVID_FIELD(input_device_id, ffbit);
	.loc 1 107 0
# 107 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_input_device_id_ffbit $160 offsetof(struct input_device_id, ffbit)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:108: 	DEVID_FIELD(input_device_id, swbit);
	.loc 1 108 0
# 108 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_input_device_id_swbit $176 offsetof(struct input_device_id, swbit)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:110: 	DEVID(eisa_device_id);
	.loc 1 110 0
# 110 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_eisa_device_id $16 sizeof(struct eisa_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:111: 	DEVID_FIELD(eisa_device_id, sig);
	.loc 1 111 0
# 111 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_eisa_device_id_sig $0 offsetof(struct eisa_device_id, sig)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:113: 	DEVID(parisc_device_id);
	.loc 1 113 0
# 113 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_parisc_device_id $8 sizeof(struct parisc_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:114: 	DEVID_FIELD(parisc_device_id, hw_type);
	.loc 1 114 0
# 114 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_parisc_device_id_hw_type $0 offsetof(struct parisc_device_id, hw_type)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:115: 	DEVID_FIELD(parisc_device_id, hversion);
	.loc 1 115 0
# 115 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_parisc_device_id_hversion $2 offsetof(struct parisc_device_id, hversion)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:116: 	DEVID_FIELD(parisc_device_id, hversion_rev);
	.loc 1 116 0
# 116 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_parisc_device_id_hversion_rev $1 offsetof(struct parisc_device_id, hversion_rev)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:117: 	DEVID_FIELD(parisc_device_id, sversion);
	.loc 1 117 0
# 117 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_parisc_device_id_sversion $4 offsetof(struct parisc_device_id, sversion)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:119: 	DEVID(sdio_device_id);
	.loc 1 119 0
# 119 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_sdio_device_id $16 sizeof(struct sdio_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:120: 	DEVID_FIELD(sdio_device_id, class);
	.loc 1 120 0
# 120 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_sdio_device_id_class $0 offsetof(struct sdio_device_id, class)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:121: 	DEVID_FIELD(sdio_device_id, vendor);
	.loc 1 121 0
# 121 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_sdio_device_id_vendor $2 offsetof(struct sdio_device_id, vendor)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:122: 	DEVID_FIELD(sdio_device_id, device);
	.loc 1 122 0
# 122 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_sdio_device_id_device $4 offsetof(struct sdio_device_id, device)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:124: 	DEVID(ssb_device_id);
	.loc 1 124 0
# 124 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_ssb_device_id $6 sizeof(struct ssb_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:125: 	DEVID_FIELD(ssb_device_id, vendor);
	.loc 1 125 0
# 125 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_ssb_device_id_vendor $0 offsetof(struct ssb_device_id, vendor)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:126: 	DEVID_FIELD(ssb_device_id, coreid);
	.loc 1 126 0
# 126 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_ssb_device_id_coreid $2 offsetof(struct ssb_device_id, coreid)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:127: 	DEVID_FIELD(ssb_device_id, revision);
	.loc 1 127 0
# 127 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_ssb_device_id_revision $4 offsetof(struct ssb_device_id, revision)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:129: 	DEVID(bcma_device_id);
	.loc 1 129 0
# 129 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_bcma_device_id $6 sizeof(struct bcma_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:130: 	DEVID_FIELD(bcma_device_id, manuf);
	.loc 1 130 0
# 130 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_bcma_device_id_manuf $0 offsetof(struct bcma_device_id, manuf)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:131: 	DEVID_FIELD(bcma_device_id, id);
	.loc 1 131 0
# 131 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_bcma_device_id_id $2 offsetof(struct bcma_device_id, id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:132: 	DEVID_FIELD(bcma_device_id, rev);
	.loc 1 132 0
# 132 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_bcma_device_id_rev $4 offsetof(struct bcma_device_id, rev)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:133: 	DEVID_FIELD(bcma_device_id, class);
	.loc 1 133 0
# 133 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_bcma_device_id_class $5 offsetof(struct bcma_device_id, class)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:135: 	DEVID(virtio_device_id);
	.loc 1 135 0
# 135 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_virtio_device_id $8 sizeof(struct virtio_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:136: 	DEVID_FIELD(virtio_device_id, device);
	.loc 1 136 0
# 136 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_virtio_device_id_device $0 offsetof(struct virtio_device_id, device)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:137: 	DEVID_FIELD(virtio_device_id, vendor);
	.loc 1 137 0
# 137 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_virtio_device_id_vendor $4 offsetof(struct virtio_device_id, vendor)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:139: 	DEVID(hv_vmbus_device_id);
	.loc 1 139 0
# 139 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_hv_vmbus_device_id $24 sizeof(struct hv_vmbus_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:140: 	DEVID_FIELD(hv_vmbus_device_id, guid);
	.loc 1 140 0
# 140 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_hv_vmbus_device_id_guid $0 offsetof(struct hv_vmbus_device_id, guid)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:142: 	DEVID(i2c_device_id);
	.loc 1 142 0
# 142 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_i2c_device_id $32 sizeof(struct i2c_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:143: 	DEVID_FIELD(i2c_device_id, name);
	.loc 1 143 0
# 143 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_i2c_device_id_name $0 offsetof(struct i2c_device_id, name)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:145: 	DEVID(spi_device_id);
	.loc 1 145 0
# 145 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_spi_device_id $40 sizeof(struct spi_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:146: 	DEVID_FIELD(spi_device_id, name);
	.loc 1 146 0
# 146 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_spi_device_id_name $0 offsetof(struct spi_device_id, name)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:148: 	DEVID(dmi_system_id);
	.loc 1 148 0
# 148 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_dmi_system_id $344 sizeof(struct dmi_system_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:149: 	DEVID_FIELD(dmi_system_id, matches);
	.loc 1 149 0
# 149 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_dmi_system_id_matches $16 offsetof(struct dmi_system_id, matches)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:151: 	DEVID(platform_device_id);
	.loc 1 151 0
# 151 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_platform_device_id $32 sizeof(struct platform_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:152: 	DEVID_FIELD(platform_device_id, name);
	.loc 1 152 0
# 152 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_platform_device_id_name $0 offsetof(struct platform_device_id, name)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:154: 	DEVID(mdio_device_id);
	.loc 1 154 0
# 154 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_mdio_device_id $8 sizeof(struct mdio_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:155: 	DEVID_FIELD(mdio_device_id, phy_id);
	.loc 1 155 0
# 155 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_mdio_device_id_phy_id $0 offsetof(struct mdio_device_id, phy_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:156: 	DEVID_FIELD(mdio_device_id, phy_id_mask);
	.loc 1 156 0
# 156 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_mdio_device_id_phy_id_mask $4 offsetof(struct mdio_device_id, phy_id_mask)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:158: 	DEVID(zorro_device_id);
	.loc 1 158 0
# 158 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_zorro_device_id $16 sizeof(struct zorro_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:159: 	DEVID_FIELD(zorro_device_id, id);
	.loc 1 159 0
# 159 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_zorro_device_id_id $0 offsetof(struct zorro_device_id, id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:161: 	DEVID(isapnp_device_id);
	.loc 1 161 0
# 161 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_isapnp_device_id $16 sizeof(struct isapnp_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:162: 	DEVID_FIELD(isapnp_device_id, vendor);
	.loc 1 162 0
# 162 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_isapnp_device_id_vendor $4 offsetof(struct isapnp_device_id, vendor)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:163: 	DEVID_FIELD(isapnp_device_id, function);
	.loc 1 163 0
# 163 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_isapnp_device_id_function $6 offsetof(struct isapnp_device_id, function)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:165: 	DEVID(ipack_device_id);
	.loc 1 165 0
# 165 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_ipack_device_id $12 sizeof(struct ipack_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:166: 	DEVID_FIELD(ipack_device_id, format);
	.loc 1 166 0
# 166 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_ipack_device_id_format $0 offsetof(struct ipack_device_id, format)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:167: 	DEVID_FIELD(ipack_device_id, vendor);
	.loc 1 167 0
# 167 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_ipack_device_id_vendor $4 offsetof(struct ipack_device_id, vendor)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:168: 	DEVID_FIELD(ipack_device_id, device);
	.loc 1 168 0
# 168 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_ipack_device_id_device $8 offsetof(struct ipack_device_id, device)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:170: 	DEVID(amba_id);
	.loc 1 170 0
# 170 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_amba_id $16 sizeof(struct amba_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:171: 	DEVID_FIELD(amba_id, id);
	.loc 1 171 0
# 171 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_amba_id_id $0 offsetof(struct amba_id, id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:172: 	DEVID_FIELD(amba_id, mask);
	.loc 1 172 0
# 172 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_amba_id_mask $4 offsetof(struct amba_id, mask)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:174: 	DEVID(mips_cdmm_device_id);
	.loc 1 174 0
# 174 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_mips_cdmm_device_id $1 sizeof(struct mips_cdmm_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:175: 	DEVID_FIELD(mips_cdmm_device_id, type);
	.loc 1 175 0
# 175 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_mips_cdmm_device_id_type $0 offsetof(struct mips_cdmm_device_id, type)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:177: 	DEVID(x86_cpu_id);
	.loc 1 177 0
# 177 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_x86_cpu_id $16 sizeof(struct x86_cpu_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:178: 	DEVID_FIELD(x86_cpu_id, feature);
	.loc 1 178 0
# 178 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_x86_cpu_id_feature $6 offsetof(struct x86_cpu_id, feature)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:179: 	DEVID_FIELD(x86_cpu_id, family);
	.loc 1 179 0
# 179 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_x86_cpu_id_family $2 offsetof(struct x86_cpu_id, family)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:180: 	DEVID_FIELD(x86_cpu_id, model);
	.loc 1 180 0
# 180 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_x86_cpu_id_model $4 offsetof(struct x86_cpu_id, model)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:181: 	DEVID_FIELD(x86_cpu_id, vendor);
	.loc 1 181 0
# 181 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_x86_cpu_id_vendor $0 offsetof(struct x86_cpu_id, vendor)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:183: 	DEVID(cpu_feature);
	.loc 1 183 0
# 183 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_cpu_feature $2 sizeof(struct cpu_feature)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:184: 	DEVID_FIELD(cpu_feature, feature);
	.loc 1 184 0
# 184 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_cpu_feature_feature $0 offsetof(struct cpu_feature, feature)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:186: 	DEVID(mei_cl_device_id);
	.loc 1 186 0
# 186 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_mei_cl_device_id $64 sizeof(struct mei_cl_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:187: 	DEVID_FIELD(mei_cl_device_id, name);
	.loc 1 187 0
# 187 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_mei_cl_device_id_name $0 offsetof(struct mei_cl_device_id, name)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:188: 	DEVID_FIELD(mei_cl_device_id, uuid);
	.loc 1 188 0
# 188 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_mei_cl_device_id_uuid $32 offsetof(struct mei_cl_device_id, uuid)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:189: 	DEVID_FIELD(mei_cl_device_id, version);
	.loc 1 189 0
# 189 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_mei_cl_device_id_version $48 offsetof(struct mei_cl_device_id, version)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:191: 	DEVID(rio_device_id);
	.loc 1 191 0
# 191 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_rio_device_id $8 sizeof(struct rio_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:192: 	DEVID_FIELD(rio_device_id, did);
	.loc 1 192 0
# 192 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_rio_device_id_did $0 offsetof(struct rio_device_id, did)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:193: 	DEVID_FIELD(rio_device_id, vid);
	.loc 1 193 0
# 193 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_rio_device_id_vid $2 offsetof(struct rio_device_id, vid)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:194: 	DEVID_FIELD(rio_device_id, asm_did);
	.loc 1 194 0
# 194 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_rio_device_id_asm_did $4 offsetof(struct rio_device_id, asm_did)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:195: 	DEVID_FIELD(rio_device_id, asm_vid);
	.loc 1 195 0
# 195 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_rio_device_id_asm_vid $6 offsetof(struct rio_device_id, asm_vid)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:197: 	DEVID(ulpi_device_id);
	.loc 1 197 0
# 197 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_ulpi_device_id $16 sizeof(struct ulpi_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:198: 	DEVID_FIELD(ulpi_device_id, vendor);
	.loc 1 198 0
# 198 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_ulpi_device_id_vendor $0 offsetof(struct ulpi_device_id, vendor)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:199: 	DEVID_FIELD(ulpi_device_id, product);
	.loc 1 199 0
# 199 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_ulpi_device_id_product $2 offsetof(struct ulpi_device_id, product)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:201: 	DEVID(hda_device_id);
	.loc 1 201 0
# 201 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_hda_device_id $32 sizeof(struct hda_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:202: 	DEVID_FIELD(hda_device_id, vendor_id);
	.loc 1 202 0
# 202 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_hda_device_id_vendor_id $0 offsetof(struct hda_device_id, vendor_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:203: 	DEVID_FIELD(hda_device_id, rev_id);
	.loc 1 203 0
# 203 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_hda_device_id_rev_id $4 offsetof(struct hda_device_id, rev_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:204: 	DEVID_FIELD(hda_device_id, api_version);
	.loc 1 204 0
# 204 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_hda_device_id_api_version $8 offsetof(struct hda_device_id, api_version)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:206: 	DEVID(fsl_mc_device_id);
	.loc 1 206 0
# 206 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_fsl_mc_device_id $18 sizeof(struct fsl_mc_device_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:207: 	DEVID_FIELD(fsl_mc_device_id, vendor);
	.loc 1 207 0
# 207 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_fsl_mc_device_id_vendor $0 offsetof(struct fsl_mc_device_id, vendor)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:208: 	DEVID_FIELD(fsl_mc_device_id, obj_type);
	.loc 1 208 0
# 208 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_fsl_mc_device_id_obj_type $2 offsetof(struct fsl_mc_device_id, obj_type)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:210: 	DEVID(tb_service_id);
	.loc 1 210 0
# 210 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->SIZE_tb_service_id $40 sizeof(struct tb_service_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:211: 	DEVID_FIELD(tb_service_id, match_flags);
	.loc 1 211 0
# 211 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_tb_service_id_match_flags $0 offsetof(struct tb_service_id, match_flags)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:212: 	DEVID_FIELD(tb_service_id, protocol_key);
	.loc 1 212 0
# 212 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_tb_service_id_protocol_key $4 offsetof(struct tb_service_id, protocol_key)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:213: 	DEVID_FIELD(tb_service_id, protocol_id);
	.loc 1 213 0
# 213 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_tb_service_id_protocol_id $16 offsetof(struct tb_service_id, protocol_id)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:214: 	DEVID_FIELD(tb_service_id, protocol_version);
	.loc 1 214 0
# 214 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_tb_service_id_protocol_version $20 offsetof(struct tb_service_id, protocol_version)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:215: 	DEVID_FIELD(tb_service_id, protocol_revision);
	.loc 1 215 0
# 215 "scripts/mod/devicetable-offsets.c" 1
	
.ascii "->OFF_tb_service_id_protocol_revision $24 offsetof(struct tb_service_id, protocol_revision)"	#
# 0 "" 2
# scripts/mod/devicetable-offsets.c:218: }
	.loc 1 218 0
#NO_APP
	xorl	%eax, %eax	#
	popq	%rbp	#
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE308:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "./include/uapi/asm-generic/int-ll64.h"
	.file 3 "./include/linux/types.h"
	.file 4 "./arch/x86/include/asm/alternative.h"
	.file 5 "./arch/x86/include/asm/nops.h"
	.file 6 "./include/linux/jump_label.h"
	.file 7 "./include/linux/init.h"
	.file 8 "./include/linux/printk.h"
	.file 9 "./include/linux/kernel.h"
	.file 10 "./arch/x86/include/asm/string_64.h"
	.file 11 "./include/uapi/linux/uuid.h"
	.file 12 "./include/linux/uuid.h"
	.file 13 "./include/asm-generic/int-ll64.h"
	.file 14 "./arch/x86/include/asm/asm.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x497
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF77
	.byte	0x1
	.long	.LASF78
	.long	.LASF79
	.long	.Ldebug_ranges0+0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF7
	.byte	0x2
	.byte	0x15
	.long	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.long	0x3b
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x5
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
	.uleb128 0x6
	.string	"u8"
	.byte	0xd
	.byte	0x11
	.long	0x3b
	.uleb128 0x4
	.long	0x71
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x4
	.long	0x87
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x7
	.byte	0x8
	.long	0x87
	.uleb128 0x3
	.long	.LASF11
	.byte	0x3
	.byte	0x1e
	.long	0xab
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF12
	.uleb128 0x8
	.byte	0x4
	.byte	0x3
	.byte	0xb0
	.long	0xc7
	.uleb128 0x9
	.long	.LASF17
	.byte	0x3
	.byte	0xb1
	.long	0x55
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF13
	.byte	0x3
	.byte	0xb2
	.long	0xb2
	.uleb128 0xa
	.long	.LASF80
	.byte	0xe
	.byte	0x92
	.long	0x80
	.uleb128 0xb
	.long	.LASF14
	.byte	0x4
	.byte	0x3d
	.long	0x55
	.uleb128 0xb
	.long	.LASF15
	.byte	0x5
	.byte	0x8f
	.long	0xf3
	.uleb128 0x7
	.byte	0x8
	.long	0xff
	.uleb128 0x7
	.byte	0x8
	.long	0x42
	.uleb128 0x4
	.long	0xf9
	.uleb128 0xb
	.long	.LASF16
	.byte	0x6
	.byte	0x53
	.long	0xa0
	.uleb128 0xc
	.long	.LASF61
	.byte	0x4
	.byte	0x6
	.byte	0x72
	.long	0x128
	.uleb128 0x9
	.long	.LASF18
	.byte	0x6
	.byte	0x73
	.long	0xc7
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF19
	.byte	0x7
	.byte	0x6d
	.long	0x133
	.uleb128 0x7
	.byte	0x8
	.long	0x139
	.uleb128 0xd
	.long	0x55
	.uleb128 0x7
	.byte	0x8
	.long	0x144
	.uleb128 0xe
	.uleb128 0xf
	.long	0x128
	.long	0x150
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF20
	.byte	0x7
	.byte	0x70
	.long	0x145
	.uleb128 0xb
	.long	.LASF21
	.byte	0x7
	.byte	0x70
	.long	0x145
	.uleb128 0xb
	.long	.LASF22
	.byte	0x7
	.byte	0x71
	.long	0x145
	.uleb128 0xb
	.long	.LASF23
	.byte	0x7
	.byte	0x71
	.long	0x145
	.uleb128 0xf
	.long	0x87
	.long	0x187
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF24
	.byte	0x7
	.byte	0x78
	.long	0x17c
	.uleb128 0xb
	.long	.LASF25
	.byte	0x7
	.byte	0x79
	.long	0x9a
	.uleb128 0xb
	.long	.LASF26
	.byte	0x7
	.byte	0x7a
	.long	0x5c
	.uleb128 0xb
	.long	.LASF27
	.byte	0x7
	.byte	0x83
	.long	0xa0
	.uleb128 0xb
	.long	.LASF28
	.byte	0x7
	.byte	0x89
	.long	0x13e
	.uleb128 0xb
	.long	.LASF29
	.byte	0x7
	.byte	0x8b
	.long	0xa0
	.uleb128 0xf
	.long	0x8e
	.long	0x1d4
	.uleb128 0x10
	.byte	0
	.uleb128 0x4
	.long	0x1c9
	.uleb128 0xb
	.long	.LASF30
	.byte	0x8
	.byte	0xb
	.long	0x1d4
	.uleb128 0xb
	.long	.LASF31
	.byte	0x8
	.byte	0xc
	.long	0x1d4
	.uleb128 0xf
	.long	0x55
	.long	0x1fa
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF32
	.byte	0x8
	.byte	0x3f
	.long	0x1ef
	.uleb128 0xb
	.long	.LASF33
	.byte	0x8
	.byte	0x53
	.long	0x17c
	.uleb128 0xb
	.long	.LASF34
	.byte	0x8
	.byte	0xbc
	.long	0x55
	.uleb128 0xb
	.long	.LASF35
	.byte	0x8
	.byte	0xbd
	.long	0x55
	.uleb128 0x11
	.long	.LASF36
	.byte	0x8
	.value	0x118
	.long	0x55
	.uleb128 0x12
	.long	.LASF38
	.uleb128 0x4
	.long	0x232
	.uleb128 0x11
	.long	.LASF37
	.byte	0x8
	.value	0x1da
	.long	0x237
	.uleb128 0x12
	.long	.LASF39
	.uleb128 0x11
	.long	.LASF40
	.byte	0x9
	.value	0x122
	.long	0x248
	.uleb128 0x13
	.long	0x93
	.long	0x268
	.uleb128 0x14
	.long	0x55
	.byte	0
	.uleb128 0x11
	.long	.LASF41
	.byte	0x9
	.value	0x123
	.long	0x274
	.uleb128 0x7
	.byte	0x8
	.long	0x259
	.uleb128 0x11
	.long	.LASF42
	.byte	0x9
	.value	0x1e3
	.long	0x55
	.uleb128 0x11
	.long	.LASF43
	.byte	0x9
	.value	0x1e4
	.long	0x55
	.uleb128 0x11
	.long	.LASF44
	.byte	0x9
	.value	0x1e5
	.long	0x55
	.uleb128 0x11
	.long	.LASF45
	.byte	0x9
	.value	0x1e6
	.long	0x55
	.uleb128 0x11
	.long	.LASF46
	.byte	0x9
	.value	0x1e7
	.long	0x55
	.uleb128 0x11
	.long	.LASF47
	.byte	0x9
	.value	0x1e8
	.long	0x55
	.uleb128 0x11
	.long	.LASF48
	.byte	0x9
	.value	0x1e9
	.long	0x55
	.uleb128 0x11
	.long	.LASF49
	.byte	0x9
	.value	0x1ea
	.long	0x55
	.uleb128 0x11
	.long	.LASF50
	.byte	0x9
	.value	0x1ec
	.long	0xa0
	.uleb128 0x11
	.long	.LASF51
	.byte	0x9
	.value	0x1f3
	.long	0xc7
	.uleb128 0x11
	.long	.LASF52
	.byte	0x9
	.value	0x207
	.long	0x55
	.uleb128 0x11
	.long	.LASF53
	.byte	0x9
	.value	0x209
	.long	0xa0
	.uleb128 0x15
	.long	.LASF81
	.byte	0x7
	.byte	0x4
	.long	0x5c
	.byte	0x9
	.value	0x20f
	.long	0x341
	.uleb128 0x16
	.long	.LASF54
	.byte	0
	.uleb128 0x16
	.long	.LASF55
	.byte	0x1
	.uleb128 0x16
	.long	.LASF56
	.byte	0x2
	.uleb128 0x16
	.long	.LASF57
	.byte	0x3
	.uleb128 0x16
	.long	.LASF58
	.byte	0x4
	.uleb128 0x16
	.long	.LASF59
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.long	.LASF60
	.byte	0x9
	.value	0x216
	.long	0x30a
	.uleb128 0x17
	.long	.LASF62
	.byte	0x3
	.byte	0x9
	.value	0x22b
	.long	0x382
	.uleb128 0x18
	.long	.LASF63
	.byte	0x9
	.value	0x22c
	.long	0x87
	.byte	0
	.uleb128 0x18
	.long	.LASF64
	.byte	0x9
	.value	0x22d
	.long	0x87
	.byte	0x1
	.uleb128 0x18
	.long	.LASF65
	.byte	0x9
	.value	0x22e
	.long	0xa0
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	0x34d
	.uleb128 0xf
	.long	0x382
	.long	0x397
	.uleb128 0x19
	.long	0x80
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	0x387
	.uleb128 0x11
	.long	.LASF66
	.byte	0x9
	.value	0x231
	.long	0x397
	.uleb128 0x11
	.long	.LASF67
	.byte	0x9
	.value	0x233
	.long	0x1d4
	.uleb128 0x11
	.long	.LASF68
	.byte	0x9
	.value	0x23e
	.long	0x1d4
	.uleb128 0x17
	.long	.LASF69
	.byte	0x4
	.byte	0x6
	.value	0x121
	.long	0x3db
	.uleb128 0x1a
	.string	"key"
	.byte	0x6
	.value	0x122
	.long	0x10f
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF70
	.byte	0xa
	.byte	0x78
	.long	0x3c0
	.uleb128 0x8
	.byte	0x10
	.byte	0xb
	.byte	0x18
	.long	0x3f9
	.uleb128 0x1b
	.string	"b"
	.byte	0xb
	.byte	0x19
	.long	0x3f9
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x30
	.long	0x409
	.uleb128 0x19
	.long	0x80
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.long	.LASF71
	.byte	0xb
	.byte	0x1a
	.long	0x3e6
	.uleb128 0x4
	.long	0x409
	.uleb128 0x8
	.byte	0x10
	.byte	0xc
	.byte	0x17
	.long	0x42c
	.uleb128 0x1b
	.string	"b"
	.byte	0xc
	.byte	0x18
	.long	0x3f9
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF72
	.byte	0xc
	.byte	0x19
	.long	0x419
	.uleb128 0x4
	.long	0x42c
	.uleb128 0xb
	.long	.LASF73
	.byte	0xc
	.byte	0x28
	.long	0x414
	.uleb128 0xb
	.long	.LASF74
	.byte	0xc
	.byte	0x29
	.long	0x437
	.uleb128 0xf
	.long	0x7b
	.long	0x462
	.uleb128 0x19
	.long	0x80
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x452
	.uleb128 0xb
	.long	.LASF75
	.byte	0xc
	.byte	0x50
	.long	0x462
	.uleb128 0xb
	.long	.LASF76
	.byte	0xc
	.byte	0x51
	.long	0x462
	.uleb128 0x1c
	.long	.LASF82
	.byte	0x1
	.byte	0x9
	.long	0x55
	.quad	.LFB308
	.quad	.LFE308-.LFB308
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xd
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.quad	.LFB308
	.quad	.LFE308-.LFB308
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LFB308
	.quad	.LFE308
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.string	"file_operations"
.LASF14:
	.string	"alternatives_patched"
.LASF54:
	.string	"SYSTEM_BOOTING"
.LASF20:
	.string	"__con_initcall_start"
.LASF19:
	.string	"initcall_t"
.LASF17:
	.string	"counter"
.LASF30:
	.string	"linux_banner"
.LASF43:
	.string	"panic_timeout"
.LASF35:
	.string	"dmesg_restrict"
.LASF64:
	.string	"c_false"
.LASF2:
	.string	"short int"
.LASF71:
	.string	"guid_t"
.LASF31:
	.string	"linux_proc_banner"
.LASF60:
	.string	"system_state"
.LASF58:
	.string	"SYSTEM_POWER_OFF"
.LASF36:
	.string	"kptr_restrict"
.LASF77:
	.ascii	"GNU C89 7.5.0 -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-av"
	.ascii	"x -m64 -mno-80387 -mno-fp-ret-in-387 -mpreferred-stack-bound"
	.ascii	"ary=3 -mskip-rax-setup -mtune=generic -mno-red-zone -mcmodel"
	.ascii	"=kernel -march=x86-64 -g -O2 -std=gnu90 -fno-strict-aliasing"
	.ascii	" -fno-common -fshort-wchar -fno-PIE -falign-jumps=1 -falign-"
	.ascii	"loops=1 -funit-at-a-tim"
	.string	"e -fno-asynchronous-unwind-tables -fno-delete-null-pointer-checks -fno-stack-protector -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -fno-strict-overflow -fstack-check=no -fconserve-stack --param allow-store-data-races=0"
.LASF39:
	.string	"atomic_notifier_head"
.LASF51:
	.string	"panic_cpu"
.LASF46:
	.string	"panic_on_io_nmi"
.LASF59:
	.string	"SYSTEM_RESTART"
.LASF40:
	.string	"panic_notifier_list"
.LASF32:
	.string	"console_printk"
.LASF56:
	.string	"SYSTEM_RUNNING"
.LASF50:
	.string	"crash_kexec_post_notifiers"
.LASF11:
	.string	"bool"
.LASF76:
	.string	"uuid_index"
.LASF34:
	.string	"printk_delay_msec"
.LASF5:
	.string	"long long int"
.LASF62:
	.string	"taint_flag"
.LASF69:
	.string	"static_key_false"
.LASF74:
	.string	"uuid_null"
.LASF67:
	.string	"hex_asc"
.LASF10:
	.string	"long int"
.LASF37:
	.string	"kmsg_fops"
.LASF41:
	.string	"panic_blink"
.LASF26:
	.string	"reset_devices"
.LASF78:
	.string	"scripts/mod/devicetable-offsets.c"
.LASF33:
	.string	"devkmsg_log_str"
.LASF22:
	.string	"__security_initcall_start"
.LASF1:
	.string	"unsigned char"
.LASF65:
	.string	"module"
.LASF72:
	.string	"uuid_t"
.LASF0:
	.string	"signed char"
.LASF48:
	.string	"sysctl_panic_on_rcu_stall"
.LASF6:
	.string	"long long unsigned int"
.LASF61:
	.string	"static_key"
.LASF4:
	.string	"unsigned int"
.LASF21:
	.string	"__con_initcall_end"
.LASF25:
	.string	"saved_command_line"
.LASF70:
	.string	"mcsafe_key"
.LASF81:
	.string	"system_states"
.LASF3:
	.string	"short unsigned int"
.LASF9:
	.string	"char"
.LASF82:
	.string	"main"
.LASF44:
	.string	"panic_on_oops"
.LASF53:
	.string	"early_boot_irqs_disabled"
.LASF12:
	.string	"_Bool"
.LASF75:
	.string	"guid_index"
.LASF27:
	.string	"rodata_enabled"
.LASF57:
	.string	"SYSTEM_HALT"
.LASF55:
	.string	"SYSTEM_SCHEDULING"
.LASF66:
	.string	"taint_flags"
.LASF8:
	.string	"long unsigned int"
.LASF24:
	.string	"boot_command_line"
.LASF28:
	.string	"late_time_init"
.LASF7:
	.string	"__u8"
.LASF18:
	.string	"enabled"
.LASF73:
	.string	"guid_null"
.LASF47:
	.string	"panic_on_warn"
.LASF45:
	.string	"panic_on_unrecovered_nmi"
.LASF29:
	.string	"initcall_debug"
.LASF79:
	.string	"/home/yongkangzhang/minimal-linux-with-cold-page-reclaim"
.LASF23:
	.string	"__security_initcall_end"
.LASF15:
	.string	"ideal_nops"
.LASF52:
	.string	"root_mountflags"
.LASF80:
	.string	"current_stack_pointer"
.LASF42:
	.string	"oops_in_progress"
.LASF63:
	.string	"c_true"
.LASF49:
	.string	"sysctl_panic_on_stackoverflow"
.LASF16:
	.string	"static_key_initialized"
.LASF13:
	.string	"atomic_t"
.LASF68:
	.string	"hex_asc_upper"
	.ident	"GCC: (Ubuntu 7.5.0-6ubuntu2) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
