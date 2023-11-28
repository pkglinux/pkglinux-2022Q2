# $NetBSD$

GITHUB_PROJECT=	rpcsvc-proto
DISTNAME=	rpcsvc-proto-1.4
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=thkukuk/}
GITHUB_RELEASE=	v1.4

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/thkukuk/rpcsvc-proto/
COMMENT=	rpcgen rpcsvc proto.x files from glibc missing in libtirpc
LICENSE=	gnu-gpl-v2 AND gnu-lgpl-v2.1

ONLY_FOR_PLATFORM=	Linux-*-*

#USE_LANGUAGES=		c c++

USE_TOOLS+=		autoconf automake gmake m4 makeinfo sed:run tar:build perl
#NO_BUILD=		yes
#NO_CONFIGURE=		yes
BLDDIR=			${WRKDIR}/build
BLDPRE=			${BLDDIR}${PREFIX}
DSTPRE=			${DESTDIR}${PREFIX}


post-extract:
	${MKDIR} -v ${BLDPRE}

do-configure:
	cd ${WRKSRC} && autoreconf -fiv
	cd ${BLDDIR} && ${WRKSRC}/configure	\
		--prefix=${PREFIX}		\
		--sysconfdir=${PREFIX}/etc

do-build:
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && ${GMAKE} DESTDIR=${BLDDIR} install
	${MKDIR} -v ${BLDPRE}/native/usr/bin/
	cd ${BLDPRE}/native/usr/bin/ && ${LN} -sfv ../../../bin/rpcgen .

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.include "../../mk/bsd.pkg.mk"
