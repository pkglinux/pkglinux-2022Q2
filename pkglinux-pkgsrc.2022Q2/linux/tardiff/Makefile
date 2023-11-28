# $NetBSD$

DISTNAME=	tardiff-1.0
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=maksverver/tardiff/releases/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/maksverver/tardiff/releases/ # TODO: check
COMMENT=	for computing differences of tar files
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*
USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake
GNU_CONFIGURE=		no
NO_CONFIGURE=		yes

BLDDIR=			${WRKDIR}/build
DSTPRE=			${DESTDIR}${PREFIX}

do-build:
	${MKDIR} -v ${BLDDIR}/bin/
	cd ${WRKSRC} && ${GMAKE} -j${MAKE_JOBS}
	cd ${WRKSRC} && ${GMAKE} PREFIX=${BLDDIR} install

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDDIR}/* ${DSTPRE}

.include "../../mk/bsd.pkg.mk"
