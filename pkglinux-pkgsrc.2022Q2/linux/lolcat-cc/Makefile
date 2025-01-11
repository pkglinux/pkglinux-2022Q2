# $NetBSD$

GITHUB_PROJECT=	lolcat-cc
#GITHUB_TAG=	refs/tags/lolcat-cc-1.0.1
DISTNAME=	lolcat-cc-1.0.1
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=n-ham/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/n-ham/lolcat-cc/
COMMENT=	cross-platform c++ implementation of lolcat
LICENSE=	mit

USE_LANGUAGES=	c++
USE_TOOLS+=	gmake
NO_CONFIGURE=	yes

do-build:
	cd ${WRKSRC} && PREFIX=${PREFIX} DESTDIR=${DESTDIR} gmake

do-install:
	cd ${WRKSRC} && PREFIX=${PREFIX} DESTDIR=${DESTDIR} gmake install

.include "../../mk/bsd.pkg.mk"
