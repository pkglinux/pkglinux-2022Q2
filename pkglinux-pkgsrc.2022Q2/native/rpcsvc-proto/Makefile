# $NetBSD$

GITHUB_PROJECT=	rpcsvc-proto
DISTNAME=	rpcsvc-proto-1.4
CATEGORIES=	native
MASTER_SITES=	${MASTER_SITE_GITHUB:=thkukuk/}
GITHUB_RELEASE=	v1.4

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/thkukuk/rpcsvc-proto/
COMMENT=	rpcgen rpcsvc proto.x files from glibc missing in libtirpc
LICENSE=	gnu-gpl-v2 AND gnu-lgpl-v2.1

ONLY_FOR_PLATFORM=	Linux-*-*

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		${PREFIX}/bin/gawk
TOOLS_PLATFORM.sed=		${PREFIX}/bin/gsed

USE_TOOLS+=		autoconf automake gmake m4 makeinfo sed:run tar:build perl

USE_LIBTOOL=	yes
USE_TOOLS+=	gmake pkg-config

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

.include "../../mk/bsd.prefs.mk"
post-extract:
	${MKDIR} -v ${BLDPRE}
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
	cd ${WRKSRC} && gcp ${FILESDIR}/Makefile.am.cross rpcsvc/Makefile.am
.endif

CONFIG_ARGS+=		--prefix=/usr
CONFIG_ARGS+=		--sysconfdir=/etc
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
CONFIG_ARGS+=		--host=${MACHINE_GNU_PLATFORM}
.endif

do-configure:
	cd ${WRKSRC} && autoreconf -fiv
	cd ${BLDDIR} && ${SETENV} ${CONFIG_ENV} ${WRKSRC}/configure ${CONFIG_ARGS}

do-build:
	cd ${BLDDIR} && ${SETENV} ${MAK_ENV} ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${SETENV} ${MAK_ENV} ${GMAKE} DESTDIR=${BLDPRE} install-strip || ${SETENV} ${MAK_ENV} ${GMAKE} DESTDIR=${BLDPRE} install)

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.include "../../mk/bsd.pkg.mk"
