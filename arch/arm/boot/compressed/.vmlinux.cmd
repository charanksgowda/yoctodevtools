cmd_arch/arm/boot/compressed/vmlinux := arm-poky-linux-gnueabi-ld.bfd      --defsym _kernel_bss_size=212644 -p --no-undefined -X -T arch/arm/boot/compressed/vmlinux.lds arch/arm/boot/compressed/head.o arch/arm/boot/compressed/piggy.gzip.o arch/arm/boot/compressed/misc.o arch/arm/boot/compressed/decompress.o arch/arm/boot/compressed/string.o arch/arm/boot/compressed/hyp-stub.o arch/arm/boot/compressed/fdt_rw.o arch/arm/boot/compressed/fdt_ro.o arch/arm/boot/compressed/fdt_wip.o arch/arm/boot/compressed/fdt.o arch/arm/boot/compressed/atags_to_fdt.o arch/arm/boot/compressed/lib1funcs.o arch/arm/boot/compressed/ashldi3.o -o arch/arm/boot/compressed/vmlinux 
