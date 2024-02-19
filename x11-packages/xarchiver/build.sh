TERMUX_PKG_HOMEPAGE=https://github.com/ib/xarchiver
TERMUX_PKG_DESCRIPTION="GTK+ frontend to various command line archivers"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="0.5.4.22"
TERMUX_PKG_SRCURL=https://github.com/ib/xarchiver/archive/${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=425b203f59a5e3d0747e80cbbe0af0beb0f9b77bbe29a9b233e85c54a4ff6193
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_TAG_TYPE="newest-tag"
TERMUX_PKG_DEPENDS="gdk-pixbuf, glib, gtk3"
TERMUX_PKG_RECOMMENDS="arj, binutils-is-llvm | binutils, bzip2, cpio, gzip, lz4, lzip, lzop, p7zip, tar, unar, unrar, unzip, xz-utils, zip, zstd"
