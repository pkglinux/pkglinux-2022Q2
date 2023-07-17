# $NetBSD$

DISTNAME=	xf86-input-evdev-2.10.6
CATEGORIES=	linux
MASTER_SITES=	https://www.x.org/pub/individual/driver/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.x.org/pub/individual/driver/
COMMENT=	Generic Linux input driver for the Xorg X server
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config

PKGCONFIG_OVERRIDE+=	xorg-evdev.pc.in

.include "../../x11/xorgproto/buildlink3.mk"
.include "../../x11/modular-xorg-server/buildlink3.mk"
.include "../../linux/eudev/buildlink3.mk"
.include "../../linux/mtdev/buildlink3.mk"
.include "../../linux/libevdev/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
