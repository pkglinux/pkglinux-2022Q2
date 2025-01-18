# $NetBSD$

GITHUB_TAG=	refs/tags/v${PKGVERSION_NOREV}
DISTNAME=	snake-asm-0.4.1
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=NikitaIvanovV/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/NikitaIvanovV/snake-asm/
COMMENT=	tiny snake game for x86_64 Linux
LICENSE=	mit

USE_LANGUAGES=	# none

WRKSRC=		${WRKDIR}/${DISTNAME}

do-build:
	cd ${WRKSRC} && PREFIX=${DESTDIR}${PREFIX} gmake

do-install:
	cd ${WRKSRC} && PREFIX=${DESTDIR}${PREFIX} gmake install

#	${MKDIR} -pv ${DESTDIR}${PREFIX}/bin/
#	${CP} -av ${WRKSRC}/snake ${DESTDIR}${PREFIX}/bin/

.include "../../mk/bsd.pkg.mk"
