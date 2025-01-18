# $NetBSD$

GITHUB_TAG=	refs/tags/v${PKGVERSION_NOREV}
DISTNAME=	sssnake-0.3.2
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=AngelJumbo/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/AngelJumbo/sssnake/
COMMENT=	cli snake game that can play itself
LICENSE=	mit

WRKSRC=		${WRKDIR}/${DISTNAME}

do-build:
	cd ${WRKSRC} && PREFIX=${PREFIX} gmake

do-install:
	cd ${WRKSRC} && PREFIX=${PREFIX} DESTDIR=${DESTDIR} gmake install

.include "../../devel/ncursesw/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
