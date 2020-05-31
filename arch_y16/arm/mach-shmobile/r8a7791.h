#ifndef __ASM_R8A7791_H__
#define __ASM_R8A7791_H__

struct platform_device;

/* DMA slave IDs */
enum {
	RCAR_DMA_SLAVE_INVALID,
	AUDIO_DMAC_SLAVE_SCU0_TX,
	AUDIO_DMAC_SLAVE_SCU0_RX,
	AUDIO_DMAC_SLAVE_SCU1_TX,
	AUDIO_DMAC_SLAVE_SCU1_RX,
	AUDIO_DMAC_SLAVE_SCU2_TX,
	AUDIO_DMAC_SLAVE_SCU2_RX,
	AUDIO_DMAC_SLAVE_SCU3_TX,
	AUDIO_DMAC_SLAVE_SCU3_RX,
	AUDIO_DMAC_SLAVE_SCU4_TX,
	AUDIO_DMAC_SLAVE_SCU4_RX,
	AUDIO_DMAC_SLAVE_SCU5_TX,
	AUDIO_DMAC_SLAVE_SCU5_RX,
	AUDIO_DMAC_SLAVE_SCU6_TX,
	AUDIO_DMAC_SLAVE_SCU6_RX,
	AUDIO_DMAC_SLAVE_SCU7_TX,
	AUDIO_DMAC_SLAVE_SCU7_RX,
	AUDIO_DMAC_SLAVE_SCU8_TX,
	AUDIO_DMAC_SLAVE_SCU8_RX,
	AUDIO_DMAC_SLAVE_SCU9_TX,
	AUDIO_DMAC_SLAVE_SCU9_RX,
	AUDIO_DMAC_SLAVE_SSI0_TX,
	AUDIO_DMAC_SLAVE_SSI0_RX,
	AUDIO_DMAC_SLAVE_SSI1_TX,
	AUDIO_DMAC_SLAVE_SSI1_RX,
	AUDIO_DMAC_SLAVE_SSI2_TX,
	AUDIO_DMAC_SLAVE_SSI2_RX,
	AUDIO_DMAC_SLAVE_SSI3_TX,
	AUDIO_DMAC_SLAVE_SSI3_RX,
	AUDIO_DMAC_SLAVE_SSI4_TX,
	AUDIO_DMAC_SLAVE_SSI4_RX,
	AUDIO_DMAC_SLAVE_SSI5_TX,
	AUDIO_DMAC_SLAVE_SSI5_RX,
	AUDIO_DMAC_SLAVE_SSI6_TX,
	AUDIO_DMAC_SLAVE_SSI6_RX,
	AUDIO_DMAC_SLAVE_SSI7_TX,
	AUDIO_DMAC_SLAVE_SSI7_RX,
	AUDIO_DMAC_SLAVE_SSI8_TX,
	AUDIO_DMAC_SLAVE_SSI8_RX,
	AUDIO_DMAC_SLAVE_SSI9_TX,
	AUDIO_DMAC_SLAVE_SSI9_RX,
	AUDIO_DMAC_SLAVE_SSIU0_TX,
	AUDIO_DMAC_SLAVE_SSIU0_RX,
	AUDIO_DMAC_SLAVE_SSIU1_TX,
	AUDIO_DMAC_SLAVE_SSIU1_RX,
	AUDIO_DMAC_SLAVE_SSIU2_TX,
	AUDIO_DMAC_SLAVE_SSIU2_RX,
	AUDIO_DMAC_SLAVE_SSIU3_TX,
	AUDIO_DMAC_SLAVE_SSIU3_RX,
	AUDIO_DMAC_SLAVE_SSIU4_TX,
	AUDIO_DMAC_SLAVE_SSIU4_RX,
	AUDIO_DMAC_SLAVE_SSIU5_TX,
	AUDIO_DMAC_SLAVE_SSIU5_RX,
	AUDIO_DMAC_SLAVE_SSIU6_TX,
	AUDIO_DMAC_SLAVE_SSIU6_RX,
	AUDIO_DMAC_SLAVE_SSIU7_TX,
	AUDIO_DMAC_SLAVE_SSIU7_RX,
	AUDIO_DMAC_SLAVE_SSIU8_TX,
	AUDIO_DMAC_SLAVE_SSIU8_RX,
	AUDIO_DMAC_SLAVE_SSIU9_TX,
	AUDIO_DMAC_SLAVE_SSIU9_RX,
	AUDIO_DMAC_SLAVE_CMD1_TO_MEM,
	AUDIOPP_DMAC_SLAVE_SCU0_TO_SSI0,
	AUDIOPP_DMAC_SLAVE_SCU1_TO_SSI1,
	AUDIOPP_DMAC_SLAVE_SCU2_TO_SSI2,
	AUDIOPP_DMAC_SLAVE_SCU3_TO_SSI3,
	AUDIOPP_DMAC_SLAVE_SCU4_TO_SSI4,
	AUDIOPP_DMAC_SLAVE_SCU5_TO_SSI5,
	AUDIOPP_DMAC_SLAVE_SCU6_TO_SSI6,
	AUDIOPP_DMAC_SLAVE_SCU7_TO_SSI7,
	AUDIOPP_DMAC_SLAVE_SCU8_TO_SSI8,
	AUDIOPP_DMAC_SLAVE_SCU9_TO_SSI9,
	AUDIOPP_DMAC_SLAVE_SSI0_TO_SCU0,
	AUDIOPP_DMAC_SLAVE_SSI1_TO_SCU1,
	AUDIOPP_DMAC_SLAVE_SSI2_TO_SCU2,
	AUDIOPP_DMAC_SLAVE_SSI3_TO_SCU3,
	AUDIOPP_DMAC_SLAVE_SSI4_TO_SCU4,
	AUDIOPP_DMAC_SLAVE_SSI5_TO_SCU5,
	AUDIOPP_DMAC_SLAVE_SSI6_TO_SCU6,
	AUDIOPP_DMAC_SLAVE_SSI7_TO_SCU7,
	AUDIOPP_DMAC_SLAVE_SSI8_TO_SCU8,
	AUDIOPP_DMAC_SLAVE_SSI9_TO_SCU9,
	AUDIOPP_DMAC_SLAVE_CMD0_TO_SSI0,
	SYS_DMAC_SLAVE_SDHI0_TX,
	SYS_DMAC_SLAVE_SDHI0_RX,
	SYS_DMAC_SLAVE_SDHI1_TX,
	SYS_DMAC_SLAVE_SDHI1_RX,
	SYS_DMAC_SLAVE_SDHI2_TX,
	SYS_DMAC_SLAVE_SDHI2_RX,
	SYS_DMAC_SLAVE_SCIF0_TX,
	SYS_DMAC_SLAVE_SCIF0_RX,
	SYS_DMAC_SLAVE_SCIF1_TX,
	SYS_DMAC_SLAVE_SCIF1_RX,
	SYS_DMAC_SLAVE_SCIF2_TX,
	SYS_DMAC_SLAVE_SCIF2_RX,
	SYS_DMAC_SLAVE_SCIF3_TX,
	SYS_DMAC_SLAVE_SCIF3_RX,
	SYS_DMAC_SLAVE_SCIF4_TX,
	SYS_DMAC_SLAVE_SCIF4_RX,
	SYS_DMAC_SLAVE_SCIF5_TX,
	SYS_DMAC_SLAVE_SCIF5_RX,
	SYS_DMAC_SLAVE_SCIFA0_TX,
	SYS_DMAC_SLAVE_SCIFA0_RX,
	SYS_DMAC_SLAVE_SCIFA1_TX,
	SYS_DMAC_SLAVE_SCIFA1_RX,
	SYS_DMAC_SLAVE_SCIFA2_TX,
	SYS_DMAC_SLAVE_SCIFA2_RX,
	SYS_DMAC_SLAVE_SCIFA3_TX,
	SYS_DMAC_SLAVE_SCIFA3_RX,
	SYS_DMAC_SLAVE_SCIFA4_TX,
	SYS_DMAC_SLAVE_SCIFA4_RX,
	SYS_DMAC_SLAVE_SCIFA5_TX,
	SYS_DMAC_SLAVE_SCIFA5_RX,
	SYS_DMAC_SLAVE_SCIFB0_TX,
	SYS_DMAC_SLAVE_SCIFB0_RX,
	SYS_DMAC_SLAVE_SCIFB1_TX,
	SYS_DMAC_SLAVE_SCIFB1_RX,
	SYS_DMAC_SLAVE_SCIFB2_TX,
	SYS_DMAC_SLAVE_SCIFB2_RX,
	SYS_DMAC_SLAVE_HSCIF0_TX,
	SYS_DMAC_SLAVE_HSCIF0_RX,
	SYS_DMAC_SLAVE_HSCIF1_TX,
	SYS_DMAC_SLAVE_HSCIF1_RX,
	SYS_DMAC_SLAVE_HSCIF2_TX,
	SYS_DMAC_SLAVE_HSCIF2_RX,
	SYS_DMAC_SLAVE_MSIOF0_TX,
	SYS_DMAC_SLAVE_MSIOF0_RX,
	SYS_DMAC_SLAVE_MSIOF1_TX,
	SYS_DMAC_SLAVE_MSIOF1_RX,
	SYS_DMAC_SLAVE_MSIOF2_TX,
	SYS_DMAC_SLAVE_MSIOF2_RX,
	USB_DMAC_SLAVE_USBHS_TX,
	USB_DMAC_SLAVE_USBHS_RX,
	USB_DMAC1_SLAVE_USBHS_TX,
	USB_DMAC1_SLAVE_USBHS_RX,
};

void r8a7791_add_standard_devices(void);
void r8a7791_add_dt_devices(void);
void r8a7791_clock_init(void);
void r8a7791_pinmux_init(void);
void r8a7791_pm_init(void);
extern struct smp_operations r8a7791_smp_ops;

#ifdef CONFIG_PM
extern void __init r8a7791_init_pm_domains(void);
#else
static inline void r8a7791_init_pm_domains(void) {}
#endif /* CONFIG_PM */

void r8a7791_module_reset(unsigned int n, u32 bits, int usecs);

#endif /* __ASM_R8A7791_H__ */