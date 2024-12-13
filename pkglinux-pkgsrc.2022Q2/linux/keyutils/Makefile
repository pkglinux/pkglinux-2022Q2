# $NetBSD$

DISTNAME=	keyutils-1.6.3
CATEGORIES=	linux
MASTER_SITES=	https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/keyutils.git/snapshot/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/keyutils.git/snapshot/
COMMENT=	control the key management system
LICENSE=	mit

USE_LANGUAGES=	c c++

USE_TOOLS+=	pkg-config
USE_TOOLS+=	gmake

PKGCONFIG_OVERRIDE+=	libkeyutils.pc.in

MAKE_ENV+=	TOPDIR=${PREFIX}
FORTIFY_SUPPORTED=	no

.include "../../mk/bsd.pkg.mk"
