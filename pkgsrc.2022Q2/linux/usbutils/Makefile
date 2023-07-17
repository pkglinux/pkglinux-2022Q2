# $NetBSD$

DISTNAME=	usbutils-013
CATEGORIES=	linux
MASTER_SITES=	https://mirrors.edge.kernel.org/pub/linux/utils/usb/usbutils/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://mirrors.edge.kernel.org/pub/linux/utils/usb/usbutils/
COMMENT=	information about USB buses in the system and the devices connected to them
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		gmake pkgconfig autoconf automake m4
MAKE_ENV+=		prefix=${PREFIX}

#WRKSRC=			${WRKDIR}/${DISTNAME}

do-configure:
	cd ${WRKSRC} && ./autogen.sh --prefix=${PREFIX} --datadir=${PREFIX}/share/hwdata

.include "../../linux/eudev/buildlink3.mk"
.include "../../devel/libusb1/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
