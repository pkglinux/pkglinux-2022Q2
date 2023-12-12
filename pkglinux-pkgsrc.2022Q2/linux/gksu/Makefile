# $NetBSD$

DISTNAME=	gksu-2.0.2
CATEGORIES=	linux
MASTER_SITES=	https://people.debian.org/~kov/gksu/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://people.debian.org/~kov/gksu/
COMMENT=	Authorization dialog library
LICENSE=	gnu-gpl-v2

USE_PKGLOCALEDIR=	yes
USE_LIBTOOL=		yes
#USE_LANGUAGES+=		c c++ fortran
USE_LANGUAGES+=		c c++
USE_TOOLS+=		bash:run gmake gsed intltool msgfmt msgmerge perl:build
USE_TOOLS+=		pkg-config xgettext
GNU_CONFIGURE=		yes

USE_X11=	YES

.include "../../sysutils/nautilus/buildlink3.mk"
.include "../../textproc/gtk-doc/buildlink3.mk"
.include "../../security/gnome-keyring/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../devel/GConf/schemas.mk"
.include "../../x11/gtk2/buildlink3.mk"
BUILDLINK_API_DEPENDS.libgksu+=	libgksu>=2.0.8
.include "../../sysutils/libgksu/buildlink3.mk"
.include "../../security/libgnome-keyring/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
