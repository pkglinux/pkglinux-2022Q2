# $NetBSD$

DISTNAME=	libxmlb-0.3.10
CATEGORIES=	linux
MASTER_SITES=	https://codeload.github.com/hughsie/libxmlb/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://codeload.github.com/hughsie/libxmlb/
COMMENT=	A library to help create and query binary XML blobs
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	gmake pkg-config

.include "../../devel/meson/build.mk"
.include "../../archivers/libarchive/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
