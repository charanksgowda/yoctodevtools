include core-image-renesas-base.inc

IMAGE_FEATURES += "x11-sato ssh-server-dropbear"

IMAGE_INSTALL += "packagegroup-core-x11-sato-games"

# pkg groups for oss codecs
IMAGE_INSTALL_append_lcb = ' ${@base_conditional("USE_MULTIMEDIA", "1", " \
    packagegroup-lcb-oss-codecs \
    ", "", d)}'

IMAGE_INSTALL_append_lcb = " \
    can-utils \
    libsocketcan \
"


#### temperary ######

IMAGE_INSTALL += " \
	xf86-video-modesetting \
	xserver-xorg-extension-glx \
	mesa-megadriver \
"