# $NetBSD$

GITHUB_PROJECT=	lm-sensors
GITHUB_TAG=	V3-6-0/lm-sensors-3-6-0
DISTNAME=	lm-sensors-3-6-0
PKGNAME=	lm-sensors-3.6.0
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=lm-sensors/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/lm-sensors/lm-sensors/
COMMENT=	User-space support for the hardware monitoring drivers
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	gmake
WRKSRC=			${WRKDIR}/lm-sensors-3-6-0
USE_PKGLOCALEDIR=	yes

.include "../../mk/bsd.prefs.mk"
MAKE_FLAGS+=	PREFIX=${PREFIX}
MAKE_FLAGS+=	ETCDIR=${PREFIX}/etc
MAKE_FLAGS+=	MANDIR=${PREFIX}/man

.include "../../mk/bsd.pkg.mk"
