cmd_arch/arm/kernel/entry-common.o := arm-poky-linux-gnueabi-gcc  -mno-thumb-interwork -marm -Wp,-MD,arch/arm/kernel/.entry-common.o.d  -nostdinc -isystem /yocto16/build/tmp/sysroots/i686-linux/usr/lib/cortexa15hf-vfp-neon-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.3/include -I/yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include -Iarch/arm/include/generated  -Iinclude -I/yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/include/uapi -Iinclude/generated/uapi -include /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian  -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a  -include asm/unified.h -msoft-float         -c -o arch/arm/kernel/entry-common.o arch/arm/kernel/entry-common.S

source_arch/arm/kernel/entry-common.o := arch/arm/kernel/entry-common.S

deps_arch/arm/kernel/entry-common.o := \
    $(wildcard include/config/need/ret/to/user.h) \
    $(wildcard include/config/function/tracer.h) \
    $(wildcard include/config/old/mcount.h) \
    $(wildcard include/config/frame/pointer.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/dynamic/ftrace.h) \
    $(wildcard include/config/oabi/compat.h) \
    $(wildcard include/config/arm/thumb.h) \
    $(wildcard include/config/cpu/endian/be8.h) \
    $(wildcard include/config/aeabi.h) \
    $(wildcard include/config/alignment/trap.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/unistd.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/uapi/asm/unistd.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/ftrace.h \
    $(wildcard include/config/arm/unwind.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/unwind.h \
  arch/arm/kernel/entry-header.S \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/cpu/v6.h) \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/context/tracking.h) \
  include/linux/init.h \
    $(wildcard include/config/broken/rodata.h) \
    $(wildcard include/config/modules.h) \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
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
  include/linux/linkage.h \
  include/linux/stringify.h \
  include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/linkage.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/assembler.h \
    $(wildcard include/config/cpu/feroceon.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/cpu/use/domains.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/ptrace.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/uapi/asm/ptrace.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/hwcap.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/uapi/asm/hwcap.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/domain.h \
    $(wildcard include/config/io/36.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/opcodes-virt.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/opcodes.h \
    $(wildcard include/config/cpu/endian/be32.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/asm-offsets.h \
  include/generated/asm-offsets.h \
  arch/arm/include/generated/asm/errno.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/include/uapi/asm-generic/errno.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/include/uapi/asm-generic/errno-base.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/crunch.h) \
    $(wildcard include/config/arm/thumbee.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \
  arch/arm/kernel/calls.S \

arch/arm/kernel/entry-common.o: $(deps_arch/arm/kernel/entry-common.o)

$(deps_arch/arm/kernel/entry-common.o):
