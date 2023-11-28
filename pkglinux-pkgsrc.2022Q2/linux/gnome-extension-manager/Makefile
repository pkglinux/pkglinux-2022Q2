# $NetBSD$

GITHUB_TAG=	refs/tags/v${PKGVERSION_NOREV}
DISTNAME=	extension-manager-0.3.2
#DISTNAME=	extension-manager-0.1.0
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=mjakeman/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/mjakeman/extension-manager/
COMMENT=	native tool for managing GNOME Shell Extensions
LICENSE=	gnu-gpl-v3

GCC_REQD+=		7

#USE_LIBTOOL=		yes
#USE_TOOLS+=		pkg-config gmake
#USE_TOOLS+=		msgfmt msgmerge xgettext
#USE_TOOLS+=		gdbus-codegen

USE_PKGLOCALEDIR=	yes
WRKSRC=			${WRKDIR}/${DISTNAME}
#MESON_ARGS+=		-Dprefix=${PREFIX}
MESON_ARGS+=		-Dlocaledir=share/locale

.include "../../devel/meson/build.mk"
.include "../../x11/libXi/buildlink3.mk"
.include "../../x11/libXcursor/buildlink3.mk"
.include "../../x11/libXcomposite/buildlink3.mk"
.include "../../x11/libXinerama/buildlink3.mk"
.include "../../linux/libadwaita/buildlink3.mk"
.include "../../textproc/json-glib/buildlink3.mk"
.include "../../linux/libsoup30/buildlink3.mk"
.include "../../linux/text-engine/buildlink3.mk"
.include "../../linux/blueprint/buildlink3.mk"
.include "../../x11/gtk4/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
