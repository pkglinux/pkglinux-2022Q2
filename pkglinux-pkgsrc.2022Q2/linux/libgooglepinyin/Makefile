# $NetBSD$

DISTNAME=	libgooglepinyin-0.1.2
CATEGORIES=	linux
MASTER_SITES=	https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/libgooglepinyin/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/libgooglepinyin/
COMMENT=	Google pinyin
LICENSE=	gnu-gpl-v2

USE_CMAKE=	yes
USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c c++

CMAKE_ARG+=	-DENABLE_STATIC=Off
#CMAKE_ARG+=	-DCMAKE_INSTALL_PREFIX=`fcitx4-config --prefix`
#CMAKE_ARG+=	-DLIB_INSTALL_DIR=`fcitx4-config --libdir`

MAKE_ENV+=	LD_LIBRARY_PATH=${WRKSRC}/src

PKGCONFIG_OVERRIDE+=	data/googlepinyin.pc.in

.include "../../mk/bsd.pkg.mk"
