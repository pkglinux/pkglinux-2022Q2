# $NetBSD: Makefile,v 1.6 2021/05/24 19:54:12 wiz Exp $

DISTNAME=	libcap-2.44
PKGREVISION=	1
CATEGORIES=	sysutils
MASTER_SITES=	https://www.kernel.org/pub/linux/libs/security/linux-privs/libcap2/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://sites.google.com/site/fullycapable/
COMMENT=	Library for getting and setting POSIX.1e capabilities
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	pkg-config gmake gsed perl

ONLY_FOR_PLATFORM=	Linux-*-*

PKGCONFIG_OVERRIDE+=	libcap/libcap.pc.in
PKGCONFIG_OVERRIDE+=	libcap/libpsx.pc.in

MAKE_FLAGS+=	prefix=${PREFIX}
MAKE_FLAGS+=	LIBDIR=${PREFIX}/lib
MAKE_FLAGS+=	MANDIR=${PREFIX}/${PKGMANDIR}
MAKE_FLAGS+=	GOLANG=no

INSTALL_MAKE_FLAGS+=	RAISE_SETFCAP=no
INSTALL_MAKE_FLAGS+=	DESTDIR=${DESTDIR}

CHECK_PORTABILITY_SKIP+=	contrib/pcaps4server

post-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/sbin/
	cd ${DESTDIR}${PREFIX}/ && find sbin/* | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/include/sys/
	cd ${DESTDIR}${PREFIX}/ && find include/sys/* | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/
	cd ${DESTDIR}${PREFIX}/ && find lib/pkgconfig/*.pc | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
	cd ${DESTDIR}${PREFIX}/ && find lib/lib* | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/sbin/
#	cd ${DESTDIR}${PREFIX}/native/usr/sbin/ && ${LN} -sfv ../../../sbin/* .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/include/sys/
#	cd ${DESTDIR}${PREFIX}/native/usr/include/sys/ && ${LN} -sfv ../../../../include/sys/* .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/
#	cd ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/ && ${LN} -sfv ../../../../lib/pkgconfig/*.pc .
#	cd ${DESTDIR}${PREFIX}/native/usr/lib/ && ${LN} -sfv ../../../lib/lib* .

.include "../../mk/bsd.pkg.mk"
