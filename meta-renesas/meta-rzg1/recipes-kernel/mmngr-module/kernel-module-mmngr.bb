require ../../include/rzg-modules-common.inc
require ../../include/multimedia-control.inc

LICENSE = "GPLv2 & MIT"
LIC_FILES_CHKSUM = " \
    file://drv/GPL-COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
    file://drv/MIT-COPYING;md5=fea016ce2bdf2ec10080f69e9381d378 \
    file://include/GPL-COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
    file://include/MIT-COPYING;md5=fea016ce2bdf2ec10080f69e9381d378 \
"
DEPENDS = "linux-renesas"
PN = "kernel-module-mmngr"
SRC_URI = "file://mmngr.tar.bz2 \
           file://0002-Add-physical-address-translating-feature.patch \
"
S = "${WORKDIR}/mmngr"

MMNGR_CFG_r8a7743 = "MMNGR_KOELSCH"
MMNGR_CFG_r8a7745 = "MMNGR_ALT"

do_compile() {
    export MMNGR_CONFIG=${MMNGR_CFG}
    if [ "X${USE_DTV}" = "X1" ]; then
        export MMNGR_SSP_CONFIG="MMNGR_SSP_ENABLE"
    else
        export MMNGR_SSP_CONFIG="MMNGR_SSP_DISABLE"
    fi
    cd ${S}/drv
    make all ARCH=arm
}

do_install () {
    # Create destination folders
    mkdir -p ${D}/lib/modules/${KERNEL_VERSION}/extra/ ${D}/usr/src/kernel/include

    # Copy shared library for reference from other modules
    cp -f ${S}/drv/Module.symvers ${KERNELSRC}/include/mmngr.symvers
    cp -f ${S}/drv/Module.symvers ${D}/usr/src/kernel/include/mmngr.symvers

    # Copy kernel module
    cp -f ${S}/drv/mmngr.ko ${D}/lib/modules/${KERNEL_VERSION}/extra/

    # Copy shared header files
    cp -f ${KERNELSRC}/include/mmngr_public.h ${D}/usr/src/kernel/include
    cp -f ${KERNELSRC}/include/mmngr_private.h ${D}/usr/src/kernel/include
}

# Append function to clean extract source
do_cleansstate_prepend() {
        bb.build.exec_func('do_clean_source', d)
}

do_clean_source() {
    rm -f ${KERNELSRC}/include/mmngr_private.h
    rm -f ${KERNELSRC}/include/mmngr_public.h
    rm -f ${KERNELSRC}/include/mmngr.symvers
}

PACKAGES = "\
    ${PN} \
    ${PN}-dev \
"

FILES_${PN} = " \
    /lib/modules/${KERNEL_VERSION}/extra/mmngr.ko \
"

FILES_${PN}-dev = " \
    /usr/src/kernel/include/mmngr.symvers \
    /usr/src/kernel/include/*.h \
"

RPROVIDES_${PN} += "kernel-module-mmngr"
INHIBIT_PACKAGE_DEBUG_SPLIT = "1"

do_configure[noexec] = "1"

python do_package_ipk_prepend () {
    d.setVar('ALLOW_EMPTY', '1')
}

KERNEL_MODULE_AUTOLOAD = "mmngr"
