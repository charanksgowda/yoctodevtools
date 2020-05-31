cmd_arch/arm/mach-shmobile/smp-r8a7790.o := arm-poky-linux-gnueabi-gcc  -mno-thumb-interwork -marm -Wp,-MD,arch/arm/mach-shmobile/.smp-r8a7790.o.d  -nostdinc -isystem /yocto16/build/tmp/sysroots/i686-linux/usr/lib/cortexa15hf-vfp-neon-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.3/include -I/yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include -Iarch/arm/include/generated  -Iinclude -I/yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/include/uapi -Iinclude/generated/uapi -include /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -Os -Wno-maybe-uninitialized -fno-dwarf2-cfi-asm -fno-omit-frame-pointer -mapcs -mno-sched-prolog -mabi=aapcs-linux -mno-thumb-interwork -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO -I/yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/mach-shmobile/include    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(smp_r8a7790)"  -D"KBUILD_MODNAME=KBUILD_STR(smp_r8a7790)" -c -o arch/arm/mach-shmobile/smp-r8a7790.o arch/arm/mach-shmobile/smp-r8a7790.c

source_arch/arm/mach-shmobile/smp-r8a7790.o := arch/arm/mach-shmobile/smp-r8a7790.c

deps_arch/arm/mach-shmobile/smp-r8a7790.o := \
    $(wildcard include/config/hotplug/cpu.h) \
  include/linux/kernel.h \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /yocto16/build/tmp/sysroots/i686-linux/usr/lib/cortexa15hf-vfp-neon-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.3/include/stdarg.h \
  include/linux/linkage.h \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/compiler-gcc4.h \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  include/linux/stringify.h \
  include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/linkage.h \
  include/linux/stddef.h \
  include/uapi/linux/stddef.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  include/uapi/linux/types.h \
  arch/arm/include/generated/asm/types.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/include/uapi/asm-generic/types.h \
  include/asm-generic/int-ll64.h \
  include/uapi/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/uapi/asm-generic/bitsperlong.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/include/uapi/linux/posix_types.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/uapi/asm/posix_types.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/include/uapi/asm-generic/posix_types.h \
  include/linux/bitops.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/bitops.h \
    $(wildcard include/config/smp.h) \
  include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  include/linux/typecheck.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/irqflags.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/arm/thumb.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/uapi/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/hwcap.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/uapi/asm/hwcap.h \
  include/asm-generic/bitops/non-atomic.h \
  include/asm-generic/bitops/fls64.h \
  include/asm-generic/bitops/sched.h \
  include/asm-generic/bitops/hweight.h \
  include/asm-generic/bitops/arch_hweight.h \
  include/asm-generic/bitops/const_hweight.h \
  include/asm-generic/bitops/lock.h \
  include/asm-generic/bitops/le.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/uapi/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/uapi/linux/byteorder/little_endian.h \
  include/linux/swab.h \
  include/uapi/linux/swab.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/swab.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/uapi/asm/swab.h \
  include/linux/byteorder/generic.h \
  include/asm-generic/bitops/ext2-atomic-setbit.h \
  include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  include/linux/printk.h \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  include/linux/init.h \
    $(wildcard include/config/broken/rodata.h) \
  include/linux/kern_levels.h \
  include/linux/dynamic_debug.h \
  include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  include/uapi/linux/string.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/string.h \
  include/linux/errno.h \
  include/uapi/linux/errno.h \
  arch/arm/include/generated/asm/errno.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/include/uapi/asm-generic/errno.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/include/uapi/asm-generic/errno-base.h \
  include/uapi/linux/kernel.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/include/uapi/linux/sysinfo.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/div64.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/compiler.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/debug/bugverbose.h) \
    $(wildcard include/config/arm/lpae.h) \
  include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  include/linux/smp.h \
    $(wildcard include/config/use/generic/smp/helpers.h) \
    $(wildcard include/config/debug/preempt.h) \
  include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/include/uapi/linux/const.h \
  include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  include/linux/bitmap.h \
  include/linux/bug.h \
  include/linux/preempt.h \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/context/tracking.h) \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/debug/stack/usage.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/crunch.h) \
    $(wildcard include/config/arm/thumbee.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/domain.h \
    $(wildcard include/config/io/36.h) \
    $(wildcard include/config/cpu/use/domains.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arch/has/barriers.h) \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/outercache.h \
    $(wildcard include/config/outer/cache/sync.h) \
    $(wildcard include/config/outer/cache.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/smp.h \
  include/linux/io.h \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/has/ioport.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/io.h \
    $(wildcard include/config/need/mach/io/h.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/pcmcia/soc/common.h) \
    $(wildcard include/config/isa.h) \
    $(wildcard include/config/pccard.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/phys/offset.h) \
    $(wildcard include/config/virt/to/bus.h) \
  include/linux/sizes.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/page.h \
    $(wildcard include/config/cpu/copy/v4wt.h) \
    $(wildcard include/config/cpu/copy/v4wb.h) \
    $(wildcard include/config/cpu/copy/feroceon.h) \
    $(wildcard include/config/cpu/copy/fa.h) \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/xscale.h) \
    $(wildcard include/config/cpu/copy/v6.h) \
    $(wildcard include/config/kuser/helpers.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/glue.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/pgtable-3level-types.h \
  include/asm-generic/getorder.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/smp_plat.h \
    $(wildcard include/config/smp/on/up.h) \
  include/linux/err.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/cputype.h \
    $(wildcard include/config/cpu/cp15.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/mach-shmobile/include/mach/platsmp-apmu.h \
  include/linux/ioport.h \
    $(wildcard include/config/memory/hotremove.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/mach-shmobile/include/mach/platsmp-rst.h \
  arch/arm/mach-shmobile/common.h \
    $(wildcard include/config/suspend.h) \
    $(wildcard include/config/cpu/idle.h) \
    $(wildcard include/config/cpu/freq.h) \
  arch/arm/mach-shmobile/pm-rcar.h \
  arch/arm/mach-shmobile/r8a7790.h \
    $(wildcard include/config/pm.h) \
  arch/arm/mach-shmobile/rcar-gen2.h \

arch/arm/mach-shmobile/smp-r8a7790.o: $(deps_arch/arm/mach-shmobile/smp-r8a7790.o)

$(deps_arch/arm/mach-shmobile/smp-r8a7790.o):
