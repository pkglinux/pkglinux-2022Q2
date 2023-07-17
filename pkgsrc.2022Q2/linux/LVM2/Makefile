# $NetBSD$

DISTNAME=	LVM2.2.03.13
PKGNAME=	LVM2-2.03.13
CATEGORIES=	linux
MASTER_SITES=	https://sourceware.org/ftp/lvm2/
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://sourceware.org/ftp/lvm2/
COMMENT=	LVM2 and device-mapper tools and libraries
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config gmake
USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++

CONFIGURE_ARGS+=	--enable-cmdlib
CONFIGURE_ARGS+=	--enable-pkgconfig
CONFIGURE_ARGS+=	--enable-udev_sync

PKGCONFIG_OVERRIDE+=	daemons/dmeventd/libdevmapper-event.pc.in
PKGCONFIG_OVERRIDE+=	libdm/libdevmapper.pc.in

.include "../../linux/eudev/buildlink3.mk"
.include "../../linux/libaio/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
