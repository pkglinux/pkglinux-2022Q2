# $NetBSD$

DISTNAME=	xf86-input-synaptics-1.9.1
CATEGORIES=	linux
MASTER_SITES=	https://www.x.org/pub/individual/driver/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.x.org/pub/individual/driver/
COMMENT=	Synaptics touchpad driver for X.Org
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config

PKGCONFIG_OVERRIDE+=	xorg-synaptics.pc.in

.include "../../devel/xorg-util-macros/buildlink3.mk"
.include "../../x11/xorgproto/buildlink3.mk"
.include "../../x11/modular-xorg-server/buildlink3.mk"
.include "../../x11/xinput/buildlink3.mk"
.include "../../linux/libevdev/buildlink3.mk"
.include "../../x11/libXi/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
