# $NetBSD$

DISTNAME=	libevdev-1.8.0
CATEGORIES=	linux
MASTER_SITES=	https://www.freedesktop.org/software/libevdev/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.freedesktop.org/software/libevdev/
COMMENT=	Common functions for Xorg input drivers
LICENSE=	mit

USE_LIBTOOL=	yes
GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config gmake

PKGCONFIG_OVERRIDE+=	libevdev.pc.in

post-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/
	cd ${DESTDIR}${PREFIX}/ && find lib/lib* | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
	cd ${DESTDIR}${PREFIX}/ && find lib/pkgconfig/*.pc | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
#	cd ${DESTDIR}${PREFIX}/native/usr/lib/ && ${LN} -sfv ../../../lib/lib* .
#	cd ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/ && ${LN} -sfv ../../../../lib/pkgconfig/*.pc .

.include "../../x11/xorgproto/buildlink3.mk"
.include "../../x11/modular-xorg-server/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
