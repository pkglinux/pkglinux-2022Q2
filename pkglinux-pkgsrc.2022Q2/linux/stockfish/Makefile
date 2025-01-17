# $NetBSD$

GITHUB_PROJECT=	Stockfish
GITHUB_TAG=	refs/tags/sf_17
DISTNAME=	sf_17
PKGNAME=	${GITHUB_PROJECT}-${DISTNAME:S/_/-/}
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=official-stockfish/}
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/official-stockfish/Stockfish/
COMMENT=	Strong open source chess engine
LICENSE=	gnu-gpl-v3

WRKSRC=		${WRKDIR}/Stockfish-sf_17/src
USE_LANGUAGES=	c++
USE_TOOLS+=	gmake

GCC_REQD+=	7

do-build:
	cd ${WRKSRC} && ${GMAKE} -j build ARCH=x86-64 

do-install:
	cd ${WRKSRC} && PREFIX=${DESTDIR}${PREFIX} ${GMAKE} -j install

.include "../../mk/bsd.pkg.mk"
