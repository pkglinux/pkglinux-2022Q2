# $NetBSD$

DISTNAME=	blueprint-compiler-v0.2.0
PKGNAME=	${DISTNAME:S,-v,-,}
CATEGORIES=	linux
MASTER_SITES=	https://gitlab.gnome.org/jwestman/blueprint-compiler/-/archive/v0.2.0/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://gitlab.gnome.org/jwestman/blueprint-compiler/-/archive/v0.2.0/
COMMENT=	markup language for GTK user interface files
LICENSE=	gnu-lgpl-v3

USE_TOOLS+=	pkg-config
USE_LANGUAGES=	# none

PKGCONFIG_OVERRIDE+=	blueprint-compiler.pc.in

.include "../../devel/meson/build.mk"
.include "../../mk/bsd.pkg.mk"
