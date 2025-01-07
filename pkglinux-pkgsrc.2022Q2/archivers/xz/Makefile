# $NetBSD: Makefile,v 1.30 2022/04/08 06:29:56 wiz Exp $

DISTNAME=	xz-5.2.5
PKGREVISION=	1
CATEGORIES=	archivers
MASTER_SITES=	https://tukaani.org/xz/
EXTRACT_SUFX=	.tar.bz2

PATCH_SITES=		https://tukaani.org/xz/
PATCHFILES=		xzgrep-ZDI-CAN-16587.patch
PATCH_DIST_STRIP=	-p1

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://tukaani.org/xz/
COMMENT=	General-purpose data compression software
LICENSE=	public-domain AND gnu-gpl-v2

USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
PKGCONFIG_OVERRIDE=	src/liblzma/liblzma.pc.in

TEST_TARGET=		check

CONFLICTS=	lzma-[0-9]* lzma-utils-[0-9]* lzmalib-[0-9]*

.include "../../mk/compiler.mk"

.if !empty(PKGSRC_COMPILER:Msunpro)
CONFIGURE_ARGS+=	--disable-assembler
.endif

CONFIGURE_ENV.SunOS+=	ac_cv_have_decl_optreset=no
CONFIGURE_ENV.SunOS+=	gl_cv_cc_visibility=no

.include "options.mk"

CONFIGURE_ENV+=	ac_cv_have_decl_optreset=no
post-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/include/
	cd ${DESTDIR}${PREFIX}/ && ${LN} -sfv ${PREFIX}/include/{lzma.h,lzma} native/usr/include/
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/
	cd ${DESTDIR}${PREFIX}/ && find lib/pkgconfig/liblzma.pc | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/lib/
	cd ${DESTDIR}${PREFIX}/ && find lib/liblzma.* | xargs -I F ${LN} -sfv ${PREFIX}/F native/F
	cd ${DESTDIR}${PREFIX}/ && find lib/liblzma.so | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/bin/
	cd ${DESTDIR}${PREFIX}/ && find bin/{xz*,unxz*,lz*,unlz*} | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/bin/
	cd ${DESTDIR}${PREFIX}/ && find bin/{lzma,unlzma,lzcat,xz,unxz,xzcat} | xargs -I F ${LN} -sfv ${PREFIX}/F native/F
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/include/
#	cd ${DESTDIR}${PREFIX}/native/usr/include/ && ${LN} -sfv ../../../include/{lzma.h,lzma} .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/
#	cd ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/ && ${LN} -sfv ../../../../lib/pkgconfig/liblzma.pc .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/lib/
#	cd ${DESTDIR}${PREFIX}/native/lib/ && ${LN} -sfv ../../lib/liblzma.* .
#	cd ${DESTDIR}${PREFIX}/native/usr/lib/ && ${LN} -sfv ../../../lib/liblzma.so .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/bin/
#	cd ${DESTDIR}${PREFIX}/native/usr/bin/ && ${LN} -sfv ../../../bin/{xz*,unxz*,lz*,unlz*} .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/bin/
#	cd ${DESTDIR}${PREFIX}/native/bin/ && ${LN} -sfv ../../bin/{lzma,unlzma,lzcat,xz,unxz,xzcat} .

.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.endif

.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
