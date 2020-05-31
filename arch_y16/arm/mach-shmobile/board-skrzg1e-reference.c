/*
 * skrzg1e board support - Reference DT implementation
 *
 * Copyright (C) 2014-2015 Renesas Electronics Corporation
 * Copyright (C) 2014-2015 Cogent Embedded, Inc.
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

#include <linux/dma-mapping.h>
#include <linux/gpio.h>
#include <linux/i2c.h>
#include <linux/kernel.h>
#include <linux/mfd/tmio.h>
#include <linux/mmc/host.h>
#include <linux/mmc/sh_mmcif.h>
#include <linux/mmc/sh_mobile_sdhi.h>
#include <linux/of_gpio.h>
#include <linux/of_platform.h>
#include <linux/platform_data/camera-rcar.h>
#include <linux/platform_data/rcar-du.h>
#include <linux/platform_data/usb-rcar-gen2-phy.h>
#if IS_ENABLED(CONFIG_VIDEO_RENESAS_VSP1) && \
!defined(CONFIG_DRM_RCAR_DU_CONNECT_VSP)
#include <linux/platform_data/vsp1.h>
#endif
#include <linux/serial_sci.h>
#include <linux/sh_dma.h>
#include <linux/spi/flash.h>
#include <linux/spi/sh_msiof.h>
#include <linux/spi/spi.h>
#include <linux/usb/phy.h>
#if IS_ENABLED(CONFIG_USB_RENESAS_USBHS_UDC)
#include <linux/usb/renesas_usbhs.h>
#endif
#include <media/soc_camera.h>
#include <asm/mach/arch.h>
#include <sound/rcar_snd.h>
#include <sound/simple_card.h>

#include "clock.h"
#include "common.h"
#include "dma-register.h"
#include "irqs.h"
#include "r8a7745.h"
#include "rcar-gen2.h"

/* DU */
static struct rcar_du_encoder_data skrzg1e_du_encoders[] = {
	{
		.type = RCAR_DU_ENCODER_HDMI,
		.output = RCAR_DU_OUTPUT_DPAD0,
	},
	{
		.type = RCAR_DU_ENCODER_NONE,
		.output = RCAR_DU_OUTPUT_LVDS0,
		.connector.lvds.panel = {
			.width_mm = 210,
			.height_mm = 158,
			.mode = {
				.clock = 65000,
				.hdisplay = 1024,
				.hsync_start = 1048,
				.hsync_end = 1184,
				.htotal = 1344,
				.vdisplay = 768,
				.vsync_start = 771,
				.vsync_end = 777,
				.vtotal = 806,
				.flags = 0,
			},
		},
	},
	{
		.type = RCAR_DU_ENCODER_VGA,
		.output = RCAR_DU_OUTPUT_DPAD1,
	},
};

static struct rcar_du_crtc_data skrzg1e_du_crtcs[] = {
	{
		.exclk = 148500000,
		.init_conn_type = DRM_MODE_CONNECTOR_HDMIA,
#ifdef CONFIG_DRM_RCAR_DU_CONNECT_VSP
		.vsp = CONFIG_DRM_RCAR_DU0_USE_VSPDU_CH,
#endif
	},
	{
		.exclk = 74250000,
		.init_conn_type = DRM_MODE_CONNECTOR_VGA,
#ifdef CONFIG_DRM_RCAR_DU_CONNECT_VSP
		.vsp = CONFIG_DRM_RCAR_DU1_USE_VSPDU_CH,
#endif
	},
};

static int skrzg1e_lvds_backlight_on(void)
{
	return 0;
}

static int skrzg1e_lvds_backlight_off(void)
{
	return 0;
}

static struct rcar_du_platform_data skrzg1e_du_pdata = {
	.encoders = skrzg1e_du_encoders,
	.num_encoders = ARRAY_SIZE(skrzg1e_du_encoders),
	.crtcs = skrzg1e_du_crtcs,
	.num_crtcs = ARRAY_SIZE(skrzg1e_du_crtcs),
#ifdef CONFIG_DRM_FBDEV_CRTC
	.fbdev_crtc = 0,
#endif
	.backlight_on = skrzg1e_lvds_backlight_on,
	.backlight_off = skrzg1e_lvds_backlight_off,
	.i2c_ch = 1,
};

static const struct resource du_resources[] __initconst = {
	DEFINE_RES_MEM(0xfeb00000, 0x40000),
	DEFINE_RES_IRQ(gic_spi(256)),
	DEFINE_RES_IRQ(gic_spi(268)),
};

static void __init skrzg1e_add_du_device(void)
{
	struct platform_device_info info = {
		.name = "rcar-du-r8a7745",
		.id = -1,
		.res = du_resources,
		.num_res = ARRAY_SIZE(du_resources),
		.data = &skrzg1e_du_pdata,
		.size_data = sizeof(skrzg1e_du_pdata),
		.dma_mask = DMA_BIT_MASK(32),
	};

	platform_device_register_full(&info);
}

/*
 * This is a really crude hack to provide clkdev support to platform
 * devices until they get moved to DT.
 */
static const struct clk_name clk_names[] __initconst = {
	{ "cmt0", NULL, "sh_cmt.0" },
	{ "scif0", NULL, "sh-sci.6" },
	{ "scif1", NULL, "sh-sci.7" },
	{ "hscif0", NULL, "sh-sci.8" },
	{ "hscif1", NULL, "sh-sci.9" },
	{ "scif2", NULL, "sh-sci.10" },
	{ "scif3", NULL, "sh-sci.11" },
	{ "scif4", NULL, "sh-sci.12" },
	{ "scif5", NULL, "sh-sci.13" },
	{ "hscif2", NULL, "sh-sci.17" },
	{ "du0", "du.0", "rcar-du-r8a7745" },
	{ "du1", "du.1", "rcar-du-r8a7745" },
	{ "hsusb", NULL, "usb_phy_rcar_gen2" },
	{ "vin0", NULL, "r8a7745-vin.0" },
	{ "vsps", NULL, NULL },
#if IS_ENABLED(CONFIG_VIDEO_RENESAS_VSP1) && \
!defined(CONFIG_DRM_RCAR_DU_CONNECT_VSP)
	{ "vsp1-du0", NULL, "vsp1.2" },
#else
	{ "vsp1-du0", NULL, NULL },
#endif
	{ "vpc0", NULL, "vpc1" },
	{ "2ddmac", NULL, "tddmac" },
	{ "fdp0", NULL, "fdp0" },
	{ "pvrsrvkm", NULL, "pvrsrvkm" },
#if IS_ENABLED(CONFIG_USB_RENESAS_USBHS_UDC)
	{ "hsusb", NULL, "renesas_usbhs" },
#else
	{ "ehci", NULL, "pci-rcar-gen2.0" },
#endif
};

/*
 * This is a really crude hack to work around core platform clock issues
 */
static const struct clk_name clk_enables[] __initconst = {
	{ "ehci", NULL, "pci-rcar-gen2.1" },
	{ "vcp0", NULL, "vcp1" },
	{ "dmal", NULL, "sh-dma-engine.0" },
	{ "sys-dmac1", NULL, "sh-dma-engine.2" },
	{ "sys-dmac0", NULL, "sh-dma-engine.3" },
#if IS_ENABLED(CONFIG_USB_RENESAS_USBHS_UDC)
	{ "usbdmac0", NULL, "sh-dma-engine.4" },
	{ "usbdmac1", NULL, "sh-dma-engine.5" },
#endif
	{ "ipmmu_gp", NULL, "ipmmu_gp" },
};

#define DMAE_CHANNEL(a, b)			\
{						\
	.offset		= (a) - 0x20,		\
	.dmars		= (a) - 0x20 + 0x40,	\
	.chclr_bit	= (b),			\
	.chclr_offset	= 0x80 - 0x20,		\
}

/* Sys-DMAC */
#define SYS_DMAC_SLAVE(_id, _bit, _addr, toffset, roffset, t, r)	\
{								\
	.slave_id	= SYS_DMAC_SLAVE_## _id ##_TX,		\
	.addr		= _addr + toffset,			\
	.chcr		= CHCR_TX(XMIT_SZ_## _bit ##BIT),	\
	.mid_rid	= t,					\
}, {								\
	.slave_id	= SYS_DMAC_SLAVE_## _id ##_RX,		\
	.addr		= _addr + roffset,			\
	.chcr		= CHCR_RX(XMIT_SZ_## _bit ##BIT),	\
	.mid_rid	= r,					\
}

#define SYS_DMAC_SLAVE_TX(_id, _bit, _addr, toffset, roffset, t, r)	\
{								\
	.slave_id	= SYS_DMAC_SLAVE_## _id ##_TX,		\
	.addr		= _addr + toffset,			\
	.chcr		= CHCR_TX(XMIT_SZ_## _bit ##BIT),	\
	.mid_rid	= t,					\
}

static const struct sh_dmae_slave_config r8a7745_sys_dmac_slaves[] = {
	SYS_DMAC_SLAVE(MMCIF0, 32, 0xee200000, 0x34, 0x34, 0xd1, 0xd2),
	SYS_DMAC_SLAVE(SDHI0, 256, 0xee100000, 0x60, 0x2060, 0xcd, 0xce),
	SYS_DMAC_SLAVE(SDHI1, 256, 0xee140000, 0x30, 0x2030, 0xc1, 0xc2),
	SYS_DMAC_SLAVE(SCIF0, 8, 0xe6e60000, 0xc, 0x14, 0x29, 0x2a),
	SYS_DMAC_SLAVE(SCIF1, 8, 0xe6e68000, 0xc, 0x14, 0x2d, 0x2e),
	SYS_DMAC_SLAVE(SCIF2, 8, 0xe6e58000, 0xc, 0x14, 0x2b, 0x2c),
	SYS_DMAC_SLAVE(SCIF3, 8, 0xe6ea8000, 0xc, 0x14, 0x2f, 0x30),
	SYS_DMAC_SLAVE(SCIF4, 8, 0xe6ee0000, 0xc, 0x14, 0xfb, 0xfc),
	SYS_DMAC_SLAVE(SCIF5, 8, 0xe6ee8000, 0xc, 0x14, 0xfd, 0xfe),
	SYS_DMAC_SLAVE(HSCIF0, 8, 0xe62c0000, 0xc, 0x14, 0x39, 0x3a),
	SYS_DMAC_SLAVE(HSCIF1, 8, 0xe62c8000, 0xc, 0x14, 0x4d, 0x4e),
	SYS_DMAC_SLAVE(HSCIF2, 8, 0xe62d0000, 0xc, 0x14, 0x3b, 0x3c),
	SYS_DMAC_SLAVE(MSIOF0, 32, 0xe6e20000, 0x50, 0x60, 0x51, 0x52),
	SYS_DMAC_SLAVE(MSIOF1, 32, 0xe6e10000, 0x50, 0x60, 0x55, 0x56),
	SYS_DMAC_SLAVE(MSIOF2, 32, 0xe6e00000, 0x50, 0x60, 0x41, 0x42),
};

static const struct sh_dmae_channel r8a7745_sys_dmac_channels[] = {
	DMAE_CHANNEL(0x8000, 0),
	DMAE_CHANNEL(0x8080, 1),
	DMAE_CHANNEL(0x8100, 2),
	DMAE_CHANNEL(0x8180, 3),
	DMAE_CHANNEL(0x8200, 4),
	DMAE_CHANNEL(0x8280, 5),
	DMAE_CHANNEL(0x8300, 6),
	DMAE_CHANNEL(0x8380, 7),
	DMAE_CHANNEL(0x8400, 8),
	DMAE_CHANNEL(0x8480, 9),
	DMAE_CHANNEL(0x8500, 10),
	DMAE_CHANNEL(0x8580, 11),
	DMAE_CHANNEL(0x8600, 12),
	DMAE_CHANNEL(0x8680, 13),
	DMAE_CHANNEL(0x8700, 14),
};

static struct sh_dmae_pdata r8a7745_sys_dmac_platform_data = {
	.slave		= r8a7745_sys_dmac_slaves,
	.slave_num	= ARRAY_SIZE(r8a7745_sys_dmac_slaves),
	.channel	= r8a7745_sys_dmac_channels,
	.channel_num	= ARRAY_SIZE(r8a7745_sys_dmac_channels),
	.ts_low_shift	= TS_LOW_SHIFT,
	.ts_low_mask	= TS_LOW_BIT << TS_LOW_SHIFT,
	.ts_high_shift	= TS_HI_SHIFT,
	.ts_high_mask	= TS_HI_BIT << TS_HI_SHIFT,
	.ts_shift	= dma_ts_shift,
	.ts_shift_num	= ARRAY_SIZE(dma_ts_shift),
	.dmaor_init	= DMAOR_DME,
	.chclr_present	= 1,
	.chclr_bitwise	= 1,
	.fourty_bits_addr = 1,
};

static struct resource r8a7745_sys_dmac_resources[] = {
	/* Channel registers and DMAOR for low */
	DEFINE_RES_MEM(0xe6700020, 0x8763 - 0x20),
	DEFINE_RES_IRQ(gic_spi(197)),
	DEFINE_RES_NAMED(gic_spi(200), 15, NULL, IORESOURCE_IRQ),

	/* Channel registers and DMAOR for high */
	DEFINE_RES_MEM(0xe6720020, 0x8763 - 0x20),
	DEFINE_RES_IRQ(gic_spi(220)),
	DEFINE_RES_NAMED(gic_spi(216), 4, NULL, IORESOURCE_IRQ),
	DEFINE_RES_NAMED(gic_spi(308), 11, NULL, IORESOURCE_IRQ),
};

#define r8a7745_register_sys_dmac(id)				\
	platform_device_register_resndata(			\
		&platform_bus, "sh-dma-engine", 2 + id,		\
		&r8a7745_sys_dmac_resources[id * 3],	id * 1 + 3,	\
		&r8a7745_sys_dmac_platform_data,		\
		sizeof(r8a7745_sys_dmac_platform_data))

static void __init skrzg1e_add_dmac_prototype(void)
{
	r8a7745_register_sys_dmac(0);
	r8a7745_register_sys_dmac(1);
}

static struct sh_mmcif_plat_data mmcif0_pdata = {
	.caps		= MMC_CAP_4_BIT_DATA |
			  MMC_CAP_8_BIT_DATA |
			  MMC_CAP_NONREMOVABLE,
	.ccs_unsupported = true,
	.clk_ctrl2_present = true,
	.slave_id_tx	= SYS_DMAC_SLAVE_MMCIF0_TX,
	.slave_id_rx	= SYS_DMAC_SLAVE_MMCIF0_RX,
};

static struct sh_mobile_sdhi_info sdhi0_info = {
	.dma_slave_tx   = SYS_DMAC_SLAVE_SDHI0_TX,
	.dma_slave_rx   = SYS_DMAC_SLAVE_SDHI0_RX,
	.dma_rx_offset  = 0x2000,

	.tmio_caps	= MMC_CAP_SD_HIGHSPEED | MMC_CAP_SDIO_IRQ |
			  MMC_CAP_POWER_OFF_CARD,
	.tmio_flags	= TMIO_MMC_HAS_IDLE_WAIT,
};

static struct sh_mobile_sdhi_info sdhi1_info = {
	.dma_slave_tx   = SYS_DMAC_SLAVE_SDHI1_TX,
	.dma_slave_rx   = SYS_DMAC_SLAVE_SDHI1_RX,
	.dma_rx_offset  = 0x2000,

	.tmio_caps	= MMC_CAP_SD_HIGHSPEED | MMC_CAP_SDIO_IRQ |
			  MMC_CAP_POWER_OFF_CARD,
	.tmio_flags	= TMIO_MMC_HAS_IDLE_WAIT,
};

/* SCIF */
#define SCIF_PD(scif_type, index, scif_index, cap)				\
static struct plat_sci_port scif##index##_platform_data = {	\
	.type		= PORT_##scif_type,			\
	.flags		= UPF_BOOT_AUTOCONF | UPF_IOREMAP,	\
	.scscr		= SCSCR_RE | SCSCR_TE,			\
	.dma_slave_tx	= SYS_DMAC_SLAVE_##scif_type##scif_index##_TX,	\
	.dma_slave_rx	= SYS_DMAC_SLAVE_##scif_type##scif_index##_RX,	\
	.capabilities	= cap,					\
}

#define PDATA_SCIF(index, baseaddr, irq, i, cap) SCIF_PD(SCIF, index, i, cap)
#define PDATA_HSCIF(index, baseaddr, irq, i, cap) SCIF_PD(HSCIF, index, i, cap)


PDATA_SCIF(0,   0xe6e60000, gic_spi(152), 0, 0); /* SCIF0 */
PDATA_SCIF(1,   0xe6e68000, gic_spi(153), 1, 0); /* SCIF1 */
PDATA_HSCIF(2,  0xe62c0000, gic_spi(154), 0, SCIx_HAVE_RTSCTS); /* HSCIF0 */
PDATA_HSCIF(3,  0xe62c8000, gic_spi(155), 1, 0); /* HSCIF1 */
PDATA_SCIF(4,  0xe6e58000, gic_spi(22), 2, 0); /* SCIF2 */
PDATA_SCIF(5,  0xe6ea8000, gic_spi(23), 3, 0); /* SCIF3 */
PDATA_SCIF(6,  0xe6ee0000, gic_spi(24), 4, 0); /* SCIF4 */
PDATA_SCIF(7,  0xe6ee8000, gic_spi(25), 5, 0); /* SCIF5 */
PDATA_HSCIF(8, 0xe6cd0000, gic_spi(21), 2, 0); /* HSCIF2 */

#define SCIF_AD(scif_type, index, baseaddr)		\
	OF_DEV_AUXDATA("renesas," scif_type "-r8a7745", baseaddr, \
			"sh-sci." # index, &scif##index##_platform_data)

#define AUXDATA_SCIF(index, baseaddr, irq) SCIF_AD("scif", index, baseaddr)
#define AUXDATA_HSCIF(index, baseaddr, irq) SCIF_AD("hscif", index, baseaddr)

#if IS_ENABLED(CONFIG_USB_RENESAS_USBHS_UDC)
/* USB-DMAC */
static const struct sh_dmae_channel usb_dmac_channels[] = {
	{
		.offset = 0,
	}, {
		.offset = 0x20,
	},
};

static const struct sh_dmae_slave_config usb_dmac_slaves[] = {
	{
		.slave_id	= USB_DMAC_SLAVE_USBHS_TX,
		.chcr		= USBTS_INDEX2VAL(USBTS_XMIT_SZ_32BYTE),
	}, {
		.slave_id	= USB_DMAC_SLAVE_USBHS_RX,
		.chcr		= USBTS_INDEX2VAL(USBTS_XMIT_SZ_32BYTE),
	},
};

static struct sh_dmae_pdata usb_dmac_platform_data = {
	.slave		= usb_dmac_slaves,
	.slave_num	= ARRAY_SIZE(usb_dmac_slaves),
	.channel	= usb_dmac_channels,
	.channel_num	= ARRAY_SIZE(usb_dmac_channels),
	.ts_low_shift	= USBTS_LOW_SHIFT,
	.ts_low_mask	= USBTS_LOW_BIT << USBTS_LOW_SHIFT,
	.ts_high_shift	= USBTS_HI_SHIFT,
	.ts_high_mask	= USBTS_HI_BIT << USBTS_HI_SHIFT,
	.ts_shift	= dma_usbts_shift,
	.ts_shift_num	= ARRAY_SIZE(dma_usbts_shift),
	.dmaor_init	= DMAOR_DME,
	.chcr_offset	= 0x14,
	.chcr_ie_bit	= 1 << 5,
	.dmaor_is_32bit	= 1,
	.needs_tend_set	= 1,
	.no_dmars	= 1,
	.slave_only	= 1,
};

static struct resource usb_dmac_resources[] = {
	DEFINE_RES_MEM(0xe65a0020, 0x44), /* Channel registers and DMAOR */
	DEFINE_RES_MEM(0xe65a0000, 0x14), /* VCR/SWR/DMICR */
	DEFINE_RES_IRQ(gic_spi(109)),
};

static const struct sh_dmae_slave_config usb_dmac1_slaves[] = {
	{
		.slave_id	= USB_DMAC1_SLAVE_USBHS_TX,
		.chcr		= USBTS_INDEX2VAL(USBTS_XMIT_SZ_32BYTE)
	}, {
		.slave_id	= USB_DMAC1_SLAVE_USBHS_RX,
		.chcr		= USBTS_INDEX2VAL(USBTS_XMIT_SZ_32BYTE)
	},
};

static struct sh_dmae_pdata usb_dmac1_platform_data = {
	.slave		= usb_dmac1_slaves,
	.slave_num	= ARRAY_SIZE(usb_dmac1_slaves),
	.channel	= usb_dmac_channels,
	.channel_num	= ARRAY_SIZE(usb_dmac_channels),
	.ts_low_shift	= USBTS_LOW_SHIFT,
	.ts_low_mask	= USBTS_LOW_BIT << USBTS_LOW_SHIFT,
	.ts_high_shift	= USBTS_HI_SHIFT,
	.ts_high_mask	= USBTS_HI_BIT << USBTS_HI_SHIFT,
	.ts_shift	= dma_usbts_shift,
	.ts_shift_num	= ARRAY_SIZE(dma_usbts_shift),
	.dmaor_init	= DMAOR_DME,
	.chcr_offset	= 0x14,
	.chcr_ie_bit	= 1 << 5,
	.dmaor_is_32bit	= 1,
	.needs_tend_set	= 1,
	.no_dmars	= 1,
	.slave_only	= 1,
};

static struct resource usb_dmac1_resources[] = {
	DEFINE_RES_MEM(0xe65b0020, 0x44), /* Channel registers and DMAO */
	DEFINE_RES_MEM(0xe65b0000, 0x14), /* VCR/SWR/DMICR */
	DEFINE_RES_IRQ(gic_spi(110)),
};

static void __init skrzg1e_add_usb_dmac_prototype(void)
{
	platform_device_register_resndata(&platform_bus, "sh-dma-engine",
					  4,
					  usb_dmac_resources,
					  ARRAY_SIZE(usb_dmac_resources),
					  &usb_dmac_platform_data,
					  sizeof(usb_dmac_platform_data));

	platform_device_register_resndata(&platform_bus, "sh-dma-engine",
					  5,
					  usb_dmac1_resources,
					  ARRAY_SIZE(usb_dmac1_resources),
					  &usb_dmac1_platform_data,
					  sizeof(usb_dmac1_platform_data));

}

/* USBHS */
static const struct resource usbhs_resources[] __initconst = {
	DEFINE_RES_MEM(0xe6590000, 0x100),
	DEFINE_RES_IRQ(gic_spi(107)),
};

struct usbhs_private {
	struct renesas_usbhs_platform_info info;
	struct usb_phy *phy;
	int pwen_gpio;
};

#define usbhs_get_priv(pdev) \
	container_of(renesas_usbhs_get_info(pdev), struct usbhs_private, info)

static int usbhs_power_ctrl(struct platform_device *pdev,
				void __iomem *base, int enable)
{
	struct usbhs_private *priv = usbhs_get_priv(pdev);

	if (!priv->phy)
		return -ENODEV;

	if (enable) {
		int retval = usb_phy_init(priv->phy);

		if (!retval)
			retval = usb_phy_set_suspend(priv->phy, 0);
		return retval;
	}

	usb_phy_set_suspend(priv->phy, 1);
	usb_phy_shutdown(priv->phy);
	return 0;
}

static int usbhs_hardware_init(struct platform_device *pdev)
{
	struct usbhs_private *priv = usbhs_get_priv(pdev);
	struct usb_phy *phy;
	int ret;
	struct device_node *np;

	np = of_find_node_by_path("/gpio@e6055000");
	if (np) {
		priv->pwen_gpio = of_get_gpio(np, 24);
		of_node_put(np);
	} else {
		pr_warn("Error: Unable to get PWEN GPIO line\n");
		ret = -ENOTSUPP;
		goto error2;
	}

	phy = usb_get_phy_dev(&pdev->dev, 0);
	if (IS_ERR(phy)) {
		ret = PTR_ERR(phy);
		goto error;
	}

	priv->phy = phy;
	return 0;
 error:
	gpio_free(priv->pwen_gpio);
 error2:
	return ret;
}

static int usbhs_hardware_exit(struct platform_device *pdev)
{
	struct usbhs_private *priv = usbhs_get_priv(pdev);

	if (!priv->phy)
		return 0;

	usb_put_phy(priv->phy);
	priv->phy = NULL;
	gpio_free(priv->pwen_gpio);
	return 0;
}

static int usbhs_get_id(struct platform_device *pdev)
{
	return USBHS_GADGET;
}

static int usbhs_get_vbus(struct platform_device *pdev)
{
	return 0;
}

static u32 skrzg1e_usbhs_pipe_type[] = {
	USB_ENDPOINT_XFER_CONTROL,
	USB_ENDPOINT_XFER_ISOC,
	USB_ENDPOINT_XFER_ISOC,
	USB_ENDPOINT_XFER_BULK,
	USB_ENDPOINT_XFER_BULK,
	USB_ENDPOINT_XFER_BULK,
	USB_ENDPOINT_XFER_INT,
	USB_ENDPOINT_XFER_INT,
	USB_ENDPOINT_XFER_INT,
	USB_ENDPOINT_XFER_BULK,
	USB_ENDPOINT_XFER_BULK,
	USB_ENDPOINT_XFER_BULK,
	USB_ENDPOINT_XFER_BULK,
	USB_ENDPOINT_XFER_BULK,
	USB_ENDPOINT_XFER_BULK,
	USB_ENDPOINT_XFER_BULK,
};

static struct usbhs_private usbhs_priv __initdata = {
	.info = {
		.platform_callback = {
			.power_ctrl	= usbhs_power_ctrl,
			.hardware_init	= usbhs_hardware_init,
			.hardware_exit	= usbhs_hardware_exit,
			.get_id		= usbhs_get_id,
			.get_vbus	= usbhs_get_vbus,
		},
		.driver_param = {
			.buswait_bwait	= 9,
			.pipe_type = skrzg1e_usbhs_pipe_type,
			.pipe_size = ARRAY_SIZE(skrzg1e_usbhs_pipe_type),
			.d0_rx_id	= USB_DMAC_SLAVE_USBHS_RX,
			.d1_tx_id	= USB_DMAC_SLAVE_USBHS_TX,
			.d2_rx_id	= USB_DMAC1_SLAVE_USBHS_RX,
			.d3_tx_id	= USB_DMAC1_SLAVE_USBHS_TX,
			.usb_dmac_xfer_size = 32,
		},
	}
};

static void __init skrzg1e_register_usbhs(void)
{
	usb_bind_phy("renesas_usbhs", 0, "usb_phy_rcar_gen2");
	platform_device_register_resndata(&platform_bus,
					  "renesas_usbhs", -1,
					  usbhs_resources,
					  ARRAY_SIZE(usbhs_resources),
					  &usbhs_priv.info,
					  sizeof(usbhs_priv.info));
}

#else
/* Internal PCI0 */
static const struct resource pci0_resources[] __initconst = {
	DEFINE_RES_MEM(0xee090000, 0x10000),	/* CFG */
	DEFINE_RES_MEM(0xee080000, 0x10000),	/* MEM */
	DEFINE_RES_IRQ(gic_spi(108)),
};

static const struct platform_device_info pci0_info __initconst = {
	.parent		= &platform_bus,
	.name		= "pci-rcar-gen2",
	.id		= 0,
	.res		= pci0_resources,
	.num_res	= ARRAY_SIZE(pci0_resources),
	.dma_mask	= DMA_BIT_MASK(32),
};

static void __init skrzg1e_add_usb0_device(void)
{
	usb_bind_phy("pci-rcar-gen2.0", 0, "usb_phy_rcar_gen2");
	platform_device_register_full(&pci0_info);
}
#endif
/* USBHS PHY */
static const struct rcar_gen2_phy_platform_data usbhs_phy_pdata __initconst = {
#if IS_ENABLED(CONFIG_USB_RENESAS_USBHS_UDC)
	.chan0_pci = 0,	/* Channel 0 is USBHS */
	.gpio_vbus = 857,
	.wakeup = true,
#else
	.chan0_pci = 1,	/* Channel 0 is PCI USB */
	.gpio_vbus = -1,
	.wakeup = false,
#endif
	.chan2_pci = 1,	/* Channel 2 is PCI USB */
};

static const struct resource usbhs_phy_resources[] __initconst = {
	DEFINE_RES_MEM(0xe6590100, 0x100),
};

/* Internal PCI1 */
static const struct resource pci1_resources[] __initconst = {
	DEFINE_RES_MEM(0xee0d0000, 0x10000),	/* CFG */
	DEFINE_RES_MEM(0xee0c0000, 0x10000),	/* MEM */
	DEFINE_RES_IRQ(gic_spi(113)),
};

static const struct platform_device_info pci1_info __initconst = {
	.parent		= &platform_bus,
	.name		= "pci-rcar-gen2",
	.id		= 1,
	.res		= pci1_resources,
	.num_res	= ARRAY_SIZE(pci1_resources),
	.dma_mask	= DMA_BIT_MASK(32),
};

static void __init skrzg1e_add_usb1_device(void)
{
	usb_bind_phy("pci-rcar-gen2.1", 0, "usb_phy_rcar_gen2");
	platform_device_register_full(&pci1_info);
}


static void skrzg1e_restart(char mode, const char *cmd)
{

}

/* VIN */
static const struct resource vin_resources[] __initconst = {
	/* VIN0 */
	DEFINE_RES_MEM(0xe6ef0000, 0x1000),
	DEFINE_RES_IRQ(gic_spi(188)),
};

static void __init skrzg1e_add_vin_device(unsigned idx,
					struct rcar_vin_platform_data *pdata)
{
	struct platform_device_info vin_info = {
		.parent		= &platform_bus,
		.name		= "r8a7745-vin",
		.id		= idx,
		.res		= &vin_resources[idx * 2],
		.num_res	= 2,
		.dma_mask	= DMA_BIT_MASK(32),
		.data		= pdata,
		.size_data	= sizeof(*pdata),
	};

	BUG_ON(idx > 1);

	platform_device_register_full(&vin_info);
}

#define SKRZG1E_CAMERA(idx, name, addr, pdata, flag)			\
static struct i2c_board_info i2c_cam##idx##_device = {			\
	I2C_BOARD_INFO(name, addr),					\
};									\
									\
static struct rcar_vin_platform_data vin##idx##_pdata = {		\
	.flags = flag,							\
};									\
									\
static struct soc_camera_link cam##idx##_link = {			\
	.bus_id = idx,							\
	.board_info = &i2c_cam##idx##_device,				\
	.i2c_adapter_id = 1,						\
	.module_name = name,						\
	.priv = pdata,							\
}

SKRZG1E_CAMERA(0, "adv7180", 0x20, NULL, RCAR_VIN_BT656);

static void __init skrzg1e_add_camera0_device(void)
{
	platform_device_register_data(&platform_bus, "soc-camera-pdrv", 0,
				      &cam0_link, sizeof(cam0_link));
	skrzg1e_add_vin_device(0, &vin0_pdata);
}

/* VSP1 */
#if IS_ENABLED(CONFIG_VIDEO_RENESAS_VSP1) && \
!defined(CONFIG_DRM_RCAR_DU_CONNECT_VSP)
static const struct vsp1_platform_data skrzg1e_vsps_pdata __initconst = {
	.features = 0,
	.rpf_count = 5,
	.uds_count = 3,
	.wpf_count = 4,
};

static const struct vsp1_platform_data skrzg1e_vspd0_pdata __initconst = {
	.features = VSP1_HAS_LIF,
	.rpf_count = 4,
	.uds_count = 1,
	.wpf_count = 4,
};

static const struct vsp1_platform_data * const skrzg1e_vsp1_pdata[] __initconst
									= {
	&skrzg1e_vsps_pdata,
	&skrzg1e_vspd0_pdata,
};

static const struct resource vsp1_1_resources[] __initconst = {
	DEFINE_RES_MEM(0xfe928000, 0x8000),
	DEFINE_RES_IRQ(gic_spi(267)),
};

static const struct resource vsp1_2_resources[] __initconst = {
	DEFINE_RES_MEM(0xfe930000, 0x8000),
	DEFINE_RES_IRQ(gic_spi(246)),
};

static const struct resource * const vsp1_resources[] __initconst = {
	vsp1_1_resources,
	vsp1_2_resources,
};

static void __init skrzg1e_add_vsp1_devices(void)
{
	struct platform_device_info info = {
		.name = "vsp1",
		.size_data = sizeof(*skrzg1e_vsp1_pdata[0]),
		.num_res = 2,
		.dma_mask = DMA_BIT_MASK(32),
	};
	unsigned int i;

	for (i = 1; i < ARRAY_SIZE(vsp1_resources); ++i) {
		info.id = i + 1;
		info.data = skrzg1e_vsp1_pdata[i];
		info.res = vsp1_resources[i];

		platform_device_register_full(&info);
	}
}
#endif

/* MSIOF */
static struct sh_msiof_spi_info msiof0_info = {
	.rx_fifo_override       = 256,
	.num_chipselect         = 1,
	.dma_tx_id              = SYS_DMAC_SLAVE_MSIOF0_TX,
	.dma_rx_id              = SYS_DMAC_SLAVE_MSIOF0_RX,
};

static struct sh_msiof_spi_info msiof1_info = {
	.rx_fifo_override       = 256,
	.num_chipselect         = 1,
	.dma_tx_id              = SYS_DMAC_SLAVE_MSIOF1_TX,
	.dma_rx_id              = SYS_DMAC_SLAVE_MSIOF1_RX,
};

/* MSIOF spidev */
static const struct spi_board_info spi_bus[] __initconst = {
	{
		.modalias	= "spidev",
		.max_speed_hz	= 6000000,
		.mode		= SPI_MODE_3,
		.bus_num	= 1,
		.chip_select	= 0,
	},
	{
		.modalias	= "spidev",
		.max_speed_hz	= 6000000,
		.mode		= SPI_MODE_3,
		.bus_num	= 2,
		.chip_select	= 0,
	},
};

#define skrzg1e_add_msiof_device spi_register_board_info

static struct of_dev_auxdata skrzg1e_auxdata_lookup[] __initdata = {
	OF_DEV_AUXDATA("renesas,mmcif-r8a7745", 0xee200000, "sh_mmcif",
			&mmcif0_pdata),
	OF_DEV_AUXDATA("renesas,sdhi-r8a7745", 0xee100000, "sdhi0",
			&sdhi0_info),
	OF_DEV_AUXDATA("renesas,sdhi-r8a7745", 0xee140000, "sdhi1",
			&sdhi1_info),
	AUXDATA_SCIF(0,   0xe6e60000, gic_spi(152)), /* SCIF0 */
	AUXDATA_SCIF(1,   0xe6e68000, gic_spi(153)), /* SCIF1 */
	AUXDATA_HSCIF(2,  0xe62c0000, gic_spi(154)), /* HSCIF0 */
	AUXDATA_HSCIF(3,  0xe62c8000, gic_spi(155)), /* HSCIF1 */
	AUXDATA_SCIF(4,  0xe6e58000, gic_spi(22)), /* SCIF2 */
	AUXDATA_SCIF(5,  0xe6ea8000, gic_spi(23)), /* SCIF3 */
	AUXDATA_SCIF(6,  0xe6ee0000, gic_spi(24)), /* SCIF4 */
	AUXDATA_SCIF(7,  0xe6ee8000, gic_spi(25)), /* SCIF5 */
	AUXDATA_HSCIF(8, 0xe6cd0000, gic_spi(21)), /* HSCIF2 */
	OF_DEV_AUXDATA("renesas,msiof-r8a7745", 0xe6e20000,
		       "spi_r8a7745_msiof.0", &msiof0_info),
	OF_DEV_AUXDATA("renesas,msiof-r8a7745", 0xe6e10000,
		       "spi_r8a7745_msiof.1", &msiof1_info),
	{},
};

static void __init skrzg1e_add_standard_devices(void)
{
	shmobile_clk_workaround(clk_names, ARRAY_SIZE(clk_names), false);
	shmobile_clk_workaround(clk_enables, ARRAY_SIZE(clk_enables), true);
	r8a7745_add_dt_devices();
	skrzg1e_add_dmac_prototype();
#if IS_ENABLED(CONFIG_USB_RENESAS_USBHS_UDC)
	skrzg1e_add_usb_dmac_prototype();
#endif
	of_platform_populate(NULL, of_default_bus_match_table,
			     skrzg1e_auxdata_lookup, NULL);
	skrzg1e_add_du_device();

	platform_device_register_resndata(&platform_bus, "usb_phy_rcar_gen2",
					  -1, usbhs_phy_resources,
					  ARRAY_SIZE(usbhs_phy_resources),
					  &usbhs_phy_pdata,
					  sizeof(usbhs_phy_pdata));
#if IS_ENABLED(CONFIG_USB_RENESAS_USBHS_UDC)
	skrzg1e_register_usbhs();
#else
	skrzg1e_add_usb0_device();
#endif
	skrzg1e_add_usb1_device();
	skrzg1e_add_camera0_device();
#if IS_ENABLED(CONFIG_VIDEO_RENESAS_VSP1) && \
!defined(CONFIG_DRM_RCAR_DU_CONNECT_VSP)
	skrzg1e_add_vsp1_devices();
#endif
	skrzg1e_add_msiof_device(spi_bus, ARRAY_SIZE(spi_bus));
}

static const char * const skrzg1e_boards_compat_dt[] __initconst = {
	"renesas,skrzg1e",
	"renesas,skrzg1e-reference",
	NULL,
};

DT_MACHINE_START(SKRZG1E_DT, "skrzg1e")
	.smp		= smp_ops(r8a7745_smp_ops),
	.init_early	= r8a7745_init_early,
	.init_time	= r8a7745_timer_init,
	.init_machine	= skrzg1e_add_standard_devices,
	.init_late	= shmobile_init_late,
	.reserve	= rcar_gen2_reserve,
	.restart	= skrzg1e_restart,
	.dt_compat	= skrzg1e_boards_compat_dt,
MACHINE_END
