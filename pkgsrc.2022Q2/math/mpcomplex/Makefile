# $NetBSD: Makefile,v 1.11 2018/01/29 14:49:15 ryoon Exp $

DISTNAME=	mpc-1.1.0
PKGNAME=	${DISTNAME:S/mpc/mpcomplex/}
CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_GNU:=mpc/}

MAINTAINER=	MarkoSchuetz@web.de
HOMEPAGE=	http://www.multiprecision.org/mpc/
COMMENT=	Multiprecision complex arithmetic library
LICENSE=	gnu-lgpl-v3

USE_LIBTOOL=	yes
GNU_CONFIGURE=	yes
INFO_FILES=	yes

# The test that checks version match between binary library and
# headers MIGHT NEED THE PACKAGE INSTALLED. Might fail otherwise.
TEST_TARGET=	check

post-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/include/
	cd ${DESTDIR}${PREFIX}/ && find include/mpc*.h | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/lib/
	cd ${DESTDIR}${PREFIX}/ && find lib/libmpc* | xargs -I F ${LN} -sfv ${PREFIX}/F native/F
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/include/
#	cd ${DESTDIR}${PREFIX}/native/usr/include/ && ${LN} -sfv ../../../include/mpc*.h .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/lib/
#	cd ${DESTDIR}${PREFIX}/native/lib/ && ${LN} -sfv ../../lib/libmpc* .

BUILDLINK_API_DEPENDS.gmp+=	gmp>=4.3.2
.include "../../devel/gmp/buildlink3.mk"
BUILDLINK_API_DEPENDS.mpfr+=	mpfr>=2.4.2
.include "../../math/mpfr/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
