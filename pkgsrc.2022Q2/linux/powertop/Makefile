# $NetBSD$

GITHUB_TAG=	refs/tags/v${PKGVERSION_NOREV}
DISTNAME=	powertop-2.15
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=fenrus75/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/fenrus75/powertop/
COMMENT=	diagnose issues with power consumption and management
LICENSE=	gnu-gpl-v2

USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake pkgconfig autoconf automake m4 intltools msgfmt xgettext
USE_LIBTOOL=		no
WRKSRC=			${WRKDIR}/${DISTNAME}

pre-configure:
	cd ${WRKSRC} && ./autogen.sh --prefix=${PREFIX}

.include "../../devel/ncurses/buildlink3.mk"
.include "../../devel/ncursesw/buildlink3.mk"
.include "../../linux/libnl/buildlink3.mk"
.include "../../sysutils/pciutils/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
