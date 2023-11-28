# $NetBSD$

GITHUB_TAG=	refs/tags/v${PKGVERSION_NOREV}
DISTNAME=	text-engine-0.1.1
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=mjakeman/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/mjakeman/text-engine/
COMMENT=	rich-text editing framework for GTK 4
LICENSE=	gnu-lgpl-v3

WRKSRC=		${WRKDIR}/${DISTNAME}

.include "../../devel/meson/build.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../textproc/json-glib/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../x11/gtk4/buildlink3.mk"
.include "../../x11/libXi/buildlink3.mk"
.include "../../x11/libXcursor/buildlink3.mk"
.include "../../x11/libXcomposite/buildlink3.mk"
.include "../../x11/libXinerama/buildlink3.mk"
.include "../../linux/libadwaita/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
