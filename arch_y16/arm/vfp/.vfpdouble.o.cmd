cmd_arch/arm/vfp/vfpdouble.o := arm-poky-linux-gnueabi-gcc  -mno-thumb-interwork -marm -Wp,-MD,arch/arm/vfp/.vfpdouble.o.d  -nostdinc -isystem /yocto16/build/tmp/sysroots/i686-linux/usr/lib/cortexa15hf-vfp-neon-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.3/include -I/yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include -Iarch/arm/include/generated  -Iinclude -I/yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/include/uapi -Iinclude/generated/uapi -include /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -Os -Wno-maybe-uninitialized -fno-dwarf2-cfi-asm -fno-omit-frame-pointer -mapcs -mno-sched-prolog -mabi=aapcs-linux -mno-thumb-interwork -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(vfpdouble)"  -D"KBUILD_MODNAME=KBUILD_STR(vfp)" -c -o arch/arm/vfp/vfpdouble.o arch/arm/vfp/vfpdouble.c

source_arch/arm/vfp/vfpdouble.o := arch/arm/vfp/vfpdouble.c

deps_arch/arm/vfp/vfpdouble.o := \
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
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/vfp.h \
  arch/arm/vfp/vfpinstr.h \
  arch/arm/vfp/vfp.h \
    $(wildcard include/config/vfpv3.h) \

arch/arm/vfp/vfpdouble.o: $(deps_arch/arm/vfp/vfpdouble.o)

$(deps_arch/arm/vfp/vfpdouble.o):
