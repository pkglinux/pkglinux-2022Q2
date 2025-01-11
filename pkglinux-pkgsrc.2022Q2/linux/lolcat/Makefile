# $NetBSD$

DISTNAME=	lolcat-100.0.1
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=busyloop/lolcat/}
EXTRACT_SUFX=	.tar.gz
PKGNAME=	${DISTNAME}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/busyloop/lolcat/ # TODO: check
COMMENT=	Rainbows and unicorns! 
LICENSE=	mit

USE_LANGUAGES=	# none
NO_CONFIGURE=	yes
NO_BUILD=	yes
do-install:
	gem install --install-root ${DESTDIR}${PREFIX} lolcat

.include "../../mk/bsd.pkg.mk"
