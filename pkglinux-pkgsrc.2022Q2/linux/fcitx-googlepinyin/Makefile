# $NetBSD$

DISTNAME=	fcitx-googlepinyin-0.1.6
CATEGORIES=	linux
MASTER_SITES=	https://download.fcitx-im.org/fcitx-googlepinyin/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://download.fcitx-im.org/fcitx-googlepinyin/
COMMENT=	Google wrapper for fcitx
LICENSE=	gnu-gpl-v2

USE_TOOLS+=		gmake intltool msgfmt msgmerge perl pkg-config xgettext
USE_CMAKE=		yes
USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++

MAKE_ENV+=	LD_LIBRARY_PATH=${WRKSRC}/src

#PKGCONFIG_OVERRIDE+=	data/googlepinyin.pc.in

.include "../../linux/libgooglepinyin/buildlink3.mk"
.include "../../inputmethod/fcitx/buildlink3.mk"
.include "../../inputmethod/fcitx-qt5/buildlink3.mk"
.include "../../inputmethod/fcitx-configtool/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
