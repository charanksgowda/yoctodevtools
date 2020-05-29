/*
 * r8a7745 processor support
 *
 * Copyright (C) 2014-2015  Renesas Electronics Corporation
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 2 of the License.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */

#include <linux/clk/shmobile.h>
#include <linux/clocksource.h>
#include <linux/irq.h>
#include <linux/kernel.h>
#include <linux/of_platform.h>
#include <linux/platform_data/gpio-rcar.h>
#include <linux/platform_data/irq-renesas-irqc.h>
#include <linux/serial_sci.h>
#include <linux/sh_dma.h>
#include <linux/sh_timer.h>
#include <linux/spi/sh_msiof.h>

#include <asm/mach/arch.h>

#include "common.h"
#include "dma-register.h"
#include "irqs.h"
#include "r8a7745.h"
#include "rcar-gen2.h"

static const struct resource pfc_resources[] __initconst = {
	DEFINE_RES_MEM(0xe6060000, 0x250),
};

#define r8a7745_register_pfc()						\
	platform_device_register_simple("pfc-r8a7745", -1, pfc_resources, \
					ARRAY_SIZE(pfc_resources))

#define r8a7745_GPIO(idx)						\
static const struct resource r8a7745_gpio##idx##_resources[] __initconst = { \
	DEFINE_RES_MEM(0xe6050000 + 0x1000 * (idx), 0x50),		\
	DEFINE_RES_IRQ(gic_spi(4 + (idx))),				\
};									\
									\
static const struct gpio_rcar_config					\
r8a7745_gpio##idx##_platform_data __initconst = {			\
	.gpio_base	= 32 * (idx),					\
	.irq_base	= 0,						\
	.number_of_pins	= 32,						\
	.pctl_name	= "pfc-r8a7745",				\
	.has_both_edge_trigger = 1,					\
};									\

r8a7745_GPIO(0);
r8a7745_GPIO(1);
r8a7745_GPIO(2);
r8a7745_GPIO(3);
r8a7745_GPIO(4);
r8a7745_GPIO(5);
r8a7745_GPIO(6);

#define r8a7745_register_gpio(idx)					\
	platform_device_register_resndata(&platform_bus, "gpio_rcar", idx, \
		r8a7745_gpio##idx##_resources,				\
		ARRAY_SIZE(r8a7745_gpio##idx##_resources),		\
		&r8a7745_gpio##idx##_platform_data,			\
		sizeof(r8a7745_gpio##idx##_platform_data))

void __init r8a7745_pinmux_init(void)
{
	r8a7745_register_pfc();
	r8a7745_register_gpio(0);
	r8a7745_register_gpio(1);
	r8a7745_register_gpio(2);
	r8a7745_register_gpio(3);
	r8a7745_register_gpio(4);
	r8a7745_register_gpio(5);
	r8a7745_register_gpio(6);
}

#define __r8a7745_SCIF(scif_type, _scscr, index, baseaddr, irq)		\
static struct plat_sci_port scif##index##_platform_data = {		\
	.type		= scif_type,					\
	.flags		= UPF_BOOT_AUTOCONF | UPF_IOREMAP,		\
	.scscr		= _scscr,					\
};									\
									\
static struct resource scif##index##_resources[] = {			\
	DEFINE_RES_MEM(baseaddr, 0x100),				\
	DEFINE_RES_IRQ(irq),						\
}

#define r8a7745_SCIF(index, baseaddr, irq)				\
	__r8a7745_SCIF(PORT_SCIF, SCSCR_RE | SCSCR_TE,			\
		       index, baseaddr, irq)

#define r8a7745_HSCIF(index, baseaddr, irq)				\
	__r8a7745_SCIF(PORT_HSCIF, SCSCR_RE | SCSCR_TE,			\
		       index, baseaddr, irq)


r8a7745_SCIF(0,  0xe6e60000, gic_spi(152)); /* SCIF0 */
r8a7745_SCIF(1,  0xe6e68000, gic_spi(153)); /* SCIF1 */
r8a7745_HSCIF(2, 0xe62c0000, gic_spi(154)); /* HSCIF0 */
r8a7745_HSCIF(3, 0xe62c8000, gic_spi(155)); /* HSCIF1 */
r8a7745_SCIF(4,  0xe6e58000, gic_spi(22)); /* SCIF2 */

#define r8a7745_register_scif(index)					       \
	platform_device_register_resndata(&platform_bus, "sh-sci", index,      \
					  scif##index##_resources,	       \
					  ARRAY_SIZE(scif##index##_resources), \
					  &scif##index##_platform_data,	       \
					  sizeof(scif##index##_platform_data))

static const struct renesas_irqc_config irqc0_data __initconst = {
	.irq_base = irq_pin(0), /* IRQ0 -> IRQ3 */
};

static const struct resource irqc0_resources[] __initconst = {
	DEFINE_RES_MEM(0xe61c0000, 0x200), /* IRQC Event Detector Block_0 */
	DEFINE_RES_IRQ(gic_spi(0)), /* IRQ0 */
	DEFINE_RES_IRQ(gic_spi(1)), /* IRQ1 */
	DEFINE_RES_IRQ(gic_spi(2)), /* IRQ2 */
	DEFINE_RES_IRQ(gic_spi(3)), /* IRQ3 */
};

#define r8a7745_register_irqc(idx)					\
	platform_device_register_resndata(&platform_bus, "renesas_irqc", \
					  idx, irqc##idx##_resources,	\
					  ARRAY_SIZE(irqc##idx##_resources), \
					  &irqc##idx##_data,		\
					  sizeof(struct renesas_irqc_config))


static const struct sh_timer_config cmt00_platform_data __initconst = {
	.name = "CMT00",
	.timer_bit = 0,
	.clockevent_rating = 80,
};

static const struct resource cmt00_resources[] __initconst = {
	DEFINE_RES_MEM(0xffca0510, 0x0c),
	DEFINE_RES_MEM(0xffca0500, 0x04),
	DEFINE_RES_IRQ(gic_spi(142)), /* CMT0_0 */
};

#define r8a7745_register_cmt(idx)					\
	platform_device_register_resndata(&platform_bus, "sh_cmt",	\
					  idx, cmt##idx##_resources,	\
					  ARRAY_SIZE(cmt##idx##_resources), \
					  &cmt##idx##_platform_data,	\
					  sizeof(struct sh_timer_config))

/* POWERVR */
static const struct resource powervr_resources[] __initconst = {
	DEFINE_RES_MEM(0xfd800000, 0x10000),
	DEFINE_RES_IRQ(gic_spi(119)),
};

#define __r8a7745_register_pvrsrvkm()					\
	platform_device_register_simple("pvrsrvkm", -1,			\
					powervr_resources,		\
					ARRAY_SIZE(powervr_resources))

#define CPG_BASE	0xe6150000
#define CPG_LEN		0x1000
#define RGXCR		0x0B4

void __init r8a7745_register_pvrsrvkm(void)
{
	void __iomem *cpg_base;
	unsigned int val;

	cpg_base = ioremap(CPG_BASE, CPG_LEN);
	val = ioread32(cpg_base + RGXCR);
	iowrite32(val | (1 << 16), cpg_base + RGXCR);
	iounmap(cpg_base);
	__r8a7745_register_pvrsrvkm();
}

void __init r8a7745_add_dt_devices(void)
{
	r8a7745_pm_init();
	r8a7745_init_pm_domains();
	r8a7745_register_cmt(00);
	r8a7745_register_pvrsrvkm();
}

void __init r8a7745_add_standard_devices(void)
{
	r8a7745_register_scif(0);
	r8a7745_register_scif(1);
	r8a7745_register_scif(2);
	r8a7745_register_scif(3);
	r8a7745_register_scif(4);

	r8a7745_add_dt_devices();
	r8a7745_register_irqc(0);
}

void __init r8a7745_init_early(void)
{
#ifndef CONFIG_ARM_ARCH_TIMER
	shmobile_setup_delay(1000, 2, 4); /* Cortex-A7 @ 1000MHz */
#endif
}

#define CNTCR 0
#define CNTFID0 0x20

void __init r8a7745_timer_init(void)
{
#if defined(CONFIG_ARM_ARCH_TIMER) || defined(CONFIG_COMMON_CLK)
	u32 mode = rcar_gen2_read_mode_pins();
#endif
#ifdef CONFIG_ARM_ARCH_TIMER
	void __iomem *base;
	u32 freq;

	/* CNTVOFF has to be initialized either from non-secure Hypervisor
	 * mode or secure Monitor mode with SCR.NS==1. If TrustZone is enabled
	 * then it should be handled by the secure code
	 */
	asm volatile(
	"	cps	0x16\n"
	"	mrc	p15, 0, r1, c1, c1, 0\n"
	"	orr	r0, r1, #1\n"
	"	mcr	p15, 0, r0, c1, c1, 0\n"
	"	isb\n"
	"	mov	r0, #0\n"
	"	mcrr	p15, 4, r0, r0, c14\n"
	"	isb\n"
	"	mcr	p15, 0, r1, c1, c1, 0\n"
	"	isb\n"
	"	cps	0x13\n"
		: : : "r0", "r1");

	/* The arch timer frequency equals ZS / 8 */
	freq = 260000000 / 8;

	/* Remap "armgcnt address map" space */
	base = ioremap(0xe6080000, PAGE_SIZE);

	/*
	 * Update the timer if it is either not running, or is not at the
	 * right frequency. The timer is only configurable in secure mode
	 * so this avoids an abort if the loader started the timer and
	 * entered the kernel in non-secure mode.
	 */

	if ((ioread32(base + CNTCR) & 1) == 0 ||
	    ioread32(base + CNTFID0) != freq) {
		/* Update registers with correct frequency */
		iowrite32(freq, base + CNTFID0);
		asm volatile("mcr p15, 0, %0, c14, c0, 0" : : "r" (freq));

		/* make sure arch timer is started by setting bit 0 of CNTCR */
		iowrite32(1, base + CNTCR);
	}

	iounmap(base);
#endif /* CONFIG_ARM_ARCH_TIMER */

#ifdef CONFIG_COMMON_CLK
	rcar_gen2_clocks_init(mode);
#endif
	clocksource_of_init();
}

#ifdef CONFIG_USE_OF

static const char * const r8a7745_boards_compat_dt[] __initconst = {
	"renesas,r8a7745",
	NULL,
};

DT_MACHINE_START(r8a7745_DT, "Generic r8a7745 (Flattened Device Tree)")
	.smp		= smp_ops(r8a7745_smp_ops),
	.init_early	= r8a7745_init_early,
	.init_time	= r8a7745_timer_init,
	.reserve	= rcar_gen2_reserve,
	.dt_compat	= r8a7745_boards_compat_dt,
MACHINE_END
#endif /* CONFIG_USE_OF */
