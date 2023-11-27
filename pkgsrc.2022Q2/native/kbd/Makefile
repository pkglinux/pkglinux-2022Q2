# $NetBSD$

DISTNAME=	kbd-2.2.0
PKGNAME=	native-kbd-2.2.0
CATEGORIES=	native
MASTER_SITES=	https://www.kernel.org/pub/linux/utils/kbd/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.kernel.org/pub/linux/utils/kbd/
COMMENT=	tools for managing Linux console
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

USE_LANGUAGES=		c c++

GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config
USE_TOOLS+=		gmake makeinfo sed:run tar:build perl

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

PKGCONFIG_OVERRIDE+=	src/libkeymap/libkeymap.pc.in

#USE_LIBTOOL=	yes

USE_LANGUAGES=		c c++
USE_NATIVE_GCC=	yes
#USE_NATIVE_GCC=	no
USE_PKGSRC_GCC=		no
#GCC_REQD+=		6

PKGSRC_USE_SSP=		no
MKPIE_SUPPORTED=	no
PKGSRC_MKPIE=		no
#STACK_CHECK_SUPPORTED=	no
#PKGSRC_USE_STACK_CHECKD=	no
#SSP_SUPPORTED=		yes

#GNU_CONFIGURE=		no
#NO_BUILD=		yes
#NO_CONFIGURE=		yes
#GNU_CONFIGURE_PREDIR=	${PREFIX}
PREDIR=			${PREFIX}/native
BLDDIR=			${WRKDIR}/build
BLDPRE=			${BLDDIR}${PREDIR}
DSTPRE=			${DESTDIR}${PREDIR}

post-extract:
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/kbd-2.2.0-backspace-1.patch
	sed -i 's/\(RESIZECONS_PROGS=\)yes/\1no/g' ${WRKSRC}/configure
	sed -i 's/resizecons.8 //' ${WRKSRC}/docs/man/man8/Makefile.in
	${MKDIR} -v ${BLDPRE}

do-configure:
	cd ${BLDDIR} && PKG_CONFIG_PATH=/usr/lib/pkgconfig \
	${WRKSRC}/configure			\
		--prefix=/usr			\
		--disable-vlock

do-build:
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${GMAKE} DESTDIR=${BLDPRE} install-strip || ${GMAKE} DESTDIR=${BLDPRE} install)
	${MKDIR} -v ${BLDPRE}/usr/share/doc/${DISTNAME}/
	${CP} -av ${WRKSRC}/docs/doc/* ${BLDPRE}/usr/share/doc/${DISTNAME}/

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.include "../../mk/bsd.pkg.mk"
