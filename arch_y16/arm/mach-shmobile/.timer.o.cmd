cmd_arch/arm/mach-shmobile/timer.o := arm-poky-linux-gnueabi-gcc  -mno-thumb-interwork -marm -Wp,-MD,arch/arm/mach-shmobile/.timer.o.d  -nostdinc -isystem /yocto16/build/tmp/sysroots/i686-linux/usr/lib/cortexa15hf-vfp-neon-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.3/include -I/yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include -Iarch/arm/include/generated  -Iinclude -I/yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/include/uapi -Iinclude/generated/uapi -include /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -Os -Wno-maybe-uninitialized -fno-dwarf2-cfi-asm -fno-omit-frame-pointer -mapcs -mno-sched-prolog -mabi=aapcs-linux -mno-thumb-interwork -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO -I/yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/mach-shmobile/include    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(timer)"  -D"KBUILD_MODNAME=KBUILD_STR(timer)" -c -o arch/arm/mach-shmobile/timer.o arch/arm/mach-shmobile/timer.c

source_arch/arm/mach-shmobile/timer.o := arch/arm/mach-shmobile/timer.c

deps_arch/arm/mach-shmobile/timer.o := \
    $(wildcard include/config/arm/arch/timer.h) \
  include/linux/platform_device.h \
    $(wildcard include/config/suspend.h) \
    $(wildcard include/config/hibernate/callbacks.h) \
    $(wildcard include/config/pm/sleep.h) \
  include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/acpi.h) \
    $(wildcard include/config/pinctrl.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/dma/cma.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  include/linux/ioport.h \
    $(wildcard include/config/memory/hotremove.h) \
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
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/include/uapi/linux/posix_types.h \
  include/linux/stddef.h \
  include/uapi/linux/stddef.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/uapi/asm/posix_types.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/include/uapi/asm-generic/posix_types.h \
  include/linux/kobject.h \
  include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/include/uapi/linux/const.h \
  include/linux/sysfs.h \
    $(wildcard include/config/debug/lock/alloc.h) \
    $(wildcard include/config/sysfs.h) \
  include/linux/errno.h \
  include/uapi/linux/errno.h \
  arch/arm/include/generated/asm/errno.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/include/uapi/asm-generic/errno.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/include/uapi/asm-generic/errno-base.h \
  include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/prove/rcu.h) \
  include/linux/kobject_ns.h \
  include/linux/atomic.h \
    $(wildcard include/config/arch/has/atomic/or.h) \
    $(wildcard include/config/generic/atomic64.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/atomic.h \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/arm/lpae.h) \
  include/linux/irqflags.h \
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
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arch/has/barriers.h) \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/outercache.h \
    $(wildcard include/config/outer/cache/sync.h) \
    $(wildcard include/config/outer/cache.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/cmpxchg.h \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/v6.h) \
  include/asm-generic/cmpxchg-local.h \
  include/asm-generic/atomic-long.h \
  include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
  include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/context/tracking.h) \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/debug/stack/usage.h) \
  include/linux/bug.h \
    $(wildcard include/config/generic/bug.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/debug/bugverbose.h) \
  include/linux/linkage.h \
  include/linux/stringify.h \
  include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/linkage.h \
  include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /yocto16/build/tmp/sysroots/i686-linux/usr/lib/cortexa15hf-vfp-neon-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.3/include/stdarg.h \
  include/linux/bitops.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/bitops.h \
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
  include/linux/init.h \
    $(wildcard include/config/broken/rodata.h) \
  include/linux/kern_levels.h \
  include/linux/dynamic_debug.h \
  include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  include/uapi/linux/string.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/string.h \
  include/uapi/linux/kernel.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/include/uapi/linux/sysinfo.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/div64.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/compiler.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/crunch.h) \
    $(wildcard include/config/arm/thumbee.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/domain.h \
    $(wildcard include/config/io/36.h) \
    $(wildcard include/config/cpu/use/domains.h) \
  include/linux/bottom_half.h \
  include/linux/spinlock_types.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/spinlock_types.h \
  include/linux/rwlock_types.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/spinlock.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/processor.h \
    $(wildcard include/config/have/hw/breakpoint.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/arm/errata/754327.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/hw_breakpoint.h \
  include/linux/rwlock.h \
  include/linux/spinlock_api_smp.h \
    $(wildcard include/config/inline/spin/lock.h) \
    $(wildcard include/config/inline/spin/lock/bh.h) \
    $(wildcard include/config/inline/spin/lock/irq.h) \
    $(wildcard include/config/inline/spin/lock/irqsave.h) \
    $(wildcard include/config/inline/spin/trylock.h) \
    $(wildcard include/config/inline/spin/trylock/bh.h) \
    $(wildcard include/config/uninline/spin/unlock.h) \
    $(wildcard include/config/inline/spin/unlock/bh.h) \
    $(wildcard include/config/inline/spin/unlock/irq.h) \
    $(wildcard include/config/inline/spin/unlock/irqrestore.h) \
  include/linux/rwlock_api_smp.h \
    $(wildcard include/config/inline/read/lock.h) \
    $(wildcard include/config/inline/write/lock.h) \
    $(wildcard include/config/inline/read/lock/bh.h) \
    $(wildcard include/config/inline/write/lock/bh.h) \
    $(wildcard include/config/inline/read/lock/irq.h) \
    $(wildcard include/config/inline/write/lock/irq.h) \
    $(wildcard include/config/inline/read/lock/irqsave.h) \
    $(wildcard include/config/inline/write/lock/irqsave.h) \
    $(wildcard include/config/inline/read/trylock.h) \
    $(wildcard include/config/inline/write/trylock.h) \
    $(wildcard include/config/inline/read/unlock.h) \
    $(wildcard include/config/inline/write/unlock.h) \
    $(wildcard include/config/inline/read/unlock/bh.h) \
    $(wildcard include/config/inline/write/unlock/bh.h) \
    $(wildcard include/config/inline/read/unlock/irq.h) \
    $(wildcard include/config/inline/write/unlock/irq.h) \
    $(wildcard include/config/inline/read/unlock/irqrestore.h) \
    $(wildcard include/config/inline/write/unlock/irqrestore.h) \
  include/linux/kref.h \
  include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/mutex/spin/on/owner.h) \
    $(wildcard include/config/have/arch/mutex/cpu/relax.h) \
  include/linux/wait.h \
  arch/arm/include/generated/asm/current.h \
  include/asm-generic/current.h \
  include/uapi/linux/wait.h \
  include/linux/klist.h \
  include/linux/pinctrl/devinfo.h \
    $(wildcard include/config/pm.h) \
  include/linux/pinctrl/consumer.h \
  include/linux/err.h \
  include/linux/seq_file.h \
    $(wildcard include/config/user/ns.h) \
  include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  include/linux/bitmap.h \
  include/linux/nodemask.h \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/movable/node.h) \
  include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  include/linux/pinctrl/pinctrl-state.h \
  include/linux/pm.h \
    $(wildcard include/config/vt/console/sleep.h) \
    $(wildcard include/config/pm/runtime.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
  include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/cache.h \
    $(wildcard include/config/arm/l1/cache/shift.h) \
    $(wildcard include/config/aeabi.h) \
  include/linux/seqlock.h \
  include/linux/math64.h \
  include/uapi/linux/time.h \
  include/linux/jiffies.h \
  include/linux/timex.h \
  include/uapi/linux/timex.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/include/uapi/linux/param.h \
  arch/arm/include/generated/asm/param.h \
  include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  include/uapi/asm-generic/param.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/timex.h \
    $(wildcard include/config/arch/multiplatform.h) \
  include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  include/linux/completion.h \
  include/linux/ratelimit.h \
  include/linux/uidgid.h \
    $(wildcard include/config/uidgid/strict/type/checks.h) \
  include/linux/highuid.h \
  include/linux/gfp.h \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/cma.h) \
  include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  include/linux/page-flags-layout.h \
    $(wildcard include/config/sparsemem/vmemmap.h) \
  include/generated/bounds.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/page.h \
    $(wildcard include/config/cpu/copy/v4wt.h) \
    $(wildcard include/config/cpu/copy/v4wb.h) \
    $(wildcard include/config/cpu/copy/feroceon.h) \
    $(wildcard include/config/cpu/copy/fa.h) \
    $(wildcard include/config/cpu/xscale.h) \
    $(wildcard include/config/cpu/copy/v6.h) \
    $(wildcard include/config/kuser/helpers.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/glue.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/pgtable-3level-types.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/phys/offset.h) \
    $(wildcard include/config/virt/to/bus.h) \
  include/linux/sizes.h \
  include/asm-generic/memory_model.h \
  include/asm-generic/getorder.h \
  include/linux/memory_hotplug.h \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  include/linux/notifier.h \
  include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  include/linux/rwsem-spinlock.h \
  include/linux/srcu.h \
  include/linux/rcupdate.h \
    $(wildcard include/config/rcu/torture/test.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tree/preempt/rcu.h) \
    $(wildcard include/config/rcu/trace.h) \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/user/qs.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/tiny/preempt/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
  include/linux/rcutree.h \
  include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/sched/book.h) \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
  include/linux/smp.h \
    $(wildcard include/config/use/generic/smp/helpers.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/smp.h \
  include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  include/linux/pfn.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/percpu.h \
  include/asm-generic/percpu.h \
  include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/topology.h \
    $(wildcard include/config/arm/cpu/topology.h) \
  include/asm-generic/topology.h \
  include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/device.h \
    $(wildcard include/config/dmabounce.h) \
    $(wildcard include/config/iommu/api.h) \
    $(wildcard include/config/arm/dma/use/iommu.h) \
    $(wildcard include/config/arch/omap.h) \
  include/linux/pm_wakeup.h \
  include/linux/mod_devicetable.h \
  include/linux/uuid.h \
  include/uapi/linux/uuid.h \
  include/linux/clocksource.h \
    $(wildcard include/config/arch/clocksource/data.h) \
    $(wildcard include/config/clocksource/watchdog.h) \
    $(wildcard include/config/clksrc/of.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/io.h \
    $(wildcard include/config/need/mach/io/h.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/pcmcia/soc/common.h) \
    $(wildcard include/config/isa.h) \
    $(wildcard include/config/pccard.h) \
  include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  include/linux/delay.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/delay.h \
  include/linux/of_address.h \
    $(wildcard include/config/of/address.h) \
  include/linux/of.h \
    $(wildcard include/config/sparc.h) \
    $(wildcard include/config/of/dynamic.h) \
    $(wildcard include/config/of.h) \
    $(wildcard include/config/attach/node.h) \
    $(wildcard include/config/detach/node.h) \
    $(wildcard include/config/add/property.h) \
    $(wildcard include/config/remove/property.h) \
    $(wildcard include/config/update/property.h) \
    $(wildcard include/config/proc/fs.h) \
    $(wildcard include/config/proc/devicetree.h) \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/include/asm/prom.h \

arch/arm/mach-shmobile/timer.o: $(deps_arch/arm/mach-shmobile/timer.o)

$(deps_arch/arm/mach-shmobile/timer.o):
