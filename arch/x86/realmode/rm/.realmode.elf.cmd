cmd_arch/x86/realmode/rm/realmode.elf := ld -m elf_x86_64 -z max-page-size=0x200000   --emit-relocs -T arch/x86/realmode/rm/realmode.lds arch/x86/realmode/rm/header.o arch/x86/realmode/rm/trampoline_64.o arch/x86/realmode/rm/stack.o arch/x86/realmode/rm/reboot.o -o arch/x86/realmode/rm/realmode.elf
