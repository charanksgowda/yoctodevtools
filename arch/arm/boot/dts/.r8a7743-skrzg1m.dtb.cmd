cmd_arch/arm/boot/dts/r8a7743-skrzg1m.dtb := arm-poky-linux-gnueabi-gcc -E -Wp,-MD,arch/arm/boot/dts/.r8a7743-skrzg1m.dtb.d.pre.tmp -nostdinc -I/yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/boot/dts -I/yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/boot/dts/include -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.r8a7743-skrzg1m.dtb.dts.tmp arch/arm/boot/dts/r8a7743-skrzg1m.dts ; /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/r8a7743-skrzg1m.dtb -b 0 -i arch/arm/boot/dts/  -d arch/arm/boot/dts/.r8a7743-skrzg1m.dtb.d.dtc.tmp arch/arm/boot/dts/.r8a7743-skrzg1m.dtb.dts.tmp ; cat arch/arm/boot/dts/.r8a7743-skrzg1m.dtb.d.pre.tmp arch/arm/boot/dts/.r8a7743-skrzg1m.dtb.d.dtc.tmp > arch/arm/boot/dts/.r8a7743-skrzg1m.dtb.d

source_arch/arm/boot/dts/r8a7743-skrzg1m.dtb := arch/arm/boot/dts/r8a7743-skrzg1m.dts

deps_arch/arm/boot/dts/r8a7743-skrzg1m.dtb := \
  arch/arm/boot/dts/r8a7743.dtsi \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/boot/dts/include/dt-bindings/clock/r8a7743-clock.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/boot/dts/include/dt-bindings/interrupt-controller/arm-gic.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/boot/dts/include/dt-bindings/interrupt-controller/irq.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/boot/dts/include/dt-bindings/gpio/gpio.h \
  /yocto16/build/tmp/work/skrzg1m-poky-linux-gnueabi/linux-renesas/3.10+git165e12ce2d7839e755debbec78dfa43b54345275-r0/git/arch/arm/boot/dts/include/dt-bindings/input/input.h \

arch/arm/boot/dts/r8a7743-skrzg1m.dtb: $(deps_arch/arm/boot/dts/r8a7743-skrzg1m.dtb)

$(deps_arch/arm/boot/dts/r8a7743-skrzg1m.dtb):
