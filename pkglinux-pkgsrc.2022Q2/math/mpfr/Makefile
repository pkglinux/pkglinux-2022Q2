# $NetBSD: Makefile,v 1.44 2020/08/24 08:20:14 wiz Exp $

DISTNAME=		mpfr-4.1.0
CATEGORIES=		math
MASTER_SITES=		http://www.mpfr.org/${DISTNAME}/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://www.mpfr.org/
COMMENT=		GMP-based library for multiple-precision floating-point computations
LICENSE=		gnu-lgpl-v3

.include "../../mk/bsd.prefs.mk"
GNU_CONFIGURE=		yes
.if !empty(MACHINE_PLATFORM:MNetBSD-[0-9]*-*) || !empty(MACHINE_PLATFORM:MDragonFly-[0-5]*-*)
CONFIGURE_ARGS+=        --disable-float128
.endif
USE_LIBTOOL=		yes
TEST_TARGET=		check
INFO_FILES=		yes

PKGCONFIG_OVERRIDE+=	mpfr.pc.in

post-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/include/
	cd ${DESTDIR}${PREFIX}/ && find include/*mpfr*.h | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/
	cd ${DESTDIR}${PREFIX}/ && find lib/pkgconfig/mpfr*.pc | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/lib/
	cd ${DESTDIR}${PREFIX}/ && find lib/libmpfr* | xargs -I F ${LN} -sfv ${PREFIX}/F native/F
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/include/
#	cd ${DESTDIR}${PREFIX}/native/usr/include/ && ${LN} -sfv ../../../include/*mpfr*.h .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/
#	cd ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/ && ${LN} -sfv ../../../../lib/pkgconfig/mpfr*.pc .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/lib/
#	cd ${DESTDIR}${PREFIX}/native/lib/ && ${LN} -sfv ../../lib/libmpfr* .

#.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
#CONFIGURE_ARGS+=        --disable-float128
PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.endif

BUILDLINK_API_DEPENDS.gmp+=	gmp>=5.0
.include "../../devel/gmp/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

.if (${MACHINE_ARCH} == alpha)
CONFIGURE_ENV+=	CFLAGS="${CFLAGS:N-mieee}"
.endif
