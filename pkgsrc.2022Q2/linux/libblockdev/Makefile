# $NetBSD$

GITHUB_PROJECT=	libblockdev
DISTNAME=	libblockdev-2.26
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=storaged-project/}
GITHUB_RELEASE=	2.26-1

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/storaged-project/libblockdev/
COMMENT=	GObject Introspection for manipulation of block devices
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config gmake mount

PKGCONFIG_OVERRIDE+=	src/lib/blockdev.pc.in
PKGCONFIG_OVERRIDE+=	src/utils/blockdev-utils.pc.in

CONFIGURE_ARGS+=	--sysconfdir=/etc
#CONFIGURE_ARGS+=	--with-python3.8
CONFIGURE_ARGS+=	--with-python3
CONFIGURE_ARGS+=	--without-gtk-doc
CONFIGURE_ARGS+=	--without-nvdimm
CONFIGURE_ARGS+=	--without-dm 

.include "../../linux/kmod/buildlink3.mk"
.include "../../native/util-linux/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../devel/libblkid/buildlink3.mk"
.include "../../linux/libbytesize/buildlink3.mk"
.include "../../textproc/libyaml/buildlink3.mk"
.include "../../linux/parted/buildlink3.mk"
.include "../../linux/volume_key/buildlink3.mk"
.include "../../devel/nss/buildlink3.mk"
.include "../../linux/cryptsetup/buildlink3.mk"
.include "../../linux/LVM2/buildlink3.mk"
.include "../../devel/pcre2/buildlink3.mk"
.include "../../math/mpfr/buildlink3.mk"
.include "../../devel/gmp/buildlink3.mk"
.include "../../security/qgpgme/buildlink3.mk"
.include "../../textproc/json-c/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
