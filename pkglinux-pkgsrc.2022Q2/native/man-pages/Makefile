# $NetBSD$

DISTNAME=	man-pages-5.05
CATEGORIES=	linux
MASTER_SITES=	https://www.kernel.org/pub/linux/docs/man-pages/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.kernel.org/pub/linux/docs/man-pages/
COMMENT=	Linux man pages for sections 1 through 8
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

#USE_LANGUAGES=		c c++

USE_TOOLS+=		gmake m4 makeinfo sed:run tar:build perl

HAS_CONFIGURE=		no
#NO_BUILD=		yes
NO_CONFIGURE=		yes
GNU_CONFIGURE=		no

#USE_LANGUAGES=		c c++
#USE_NATIVE_GCC=	no
#USE_PKGSRC_GCC=	yes
#GCC_REQD+=		6
PREDIR=			${PREFIX}/native
BLDDIR=			${WRKSRC}
BLDPRE=			${BLDDIR}${PREDIR}
DSTPRE=			${DESTDIR}${PREDIR}

post-extract:
	${MKDIR} -v ${BLDPRE}

do-build:
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS} DESTDIR=${BLDPRE} install

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.include "../../mk/bsd.pkg.mk"
