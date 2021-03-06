FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append += " \
    file://0001-gst-plugins-base-vspmfilter-Add-new-plugin-support-DMAbuf.patch \
    file://0002-gst-plugins-base-vspmfilter-add-outbuf-alloc-mode.patch \
    file://0003-gst-plugins-base-videoencoder-fix-error-w-I420-format.patch \
    file://0004-vspmfilter-Align-the-start-address-of-the-CbCr-ingre.patch \
    file://0005-gst-plugins-base-playbin-add-properties-decode-dmabuf-and-decode-nocopy.patch \
    file://0006-vspmfilter-add-RGB-and-RGBx-output.patch \
    file://0007-vspmfilter-fix-memory-leak.patch \
    file://0008-vspmfilter-Rewrite-implement-for-swap.patch \
    file://0009-vspmfilter-Add-all-possible-format-that-vspm-can-han.patch \
    file://0010-vspmfilter-Rewrite-caps-with-available-format-only.patch \
    file://0011-vspmfilter-Update-setting-in-out-params.patch \
    file://0012-gstvspmfilter-add-bufferpool.patch \
    file://0013-gstvspmfilter-re-add-memory_alignment.patch \
    file://0015-gstplaybin-change-vspmfilter-as-default-converter.patch \
    file://0017-vspmfilter-Fix-mistake-in-storing-dmabuf_pid.patch \
    file://0018-vspmfilter-Fix-crash-issue-in-dmabuf-use-mode-with-s.patch \
"

DEPENDS_append += " kernel-module-mmngr mmngr-user-module kernel-module-mmngrbuf mmngrbuf-user-module vspm-user-module kernel-module-vspm"
