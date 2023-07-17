# $NetBSD$

DISTNAME=	comixcursors-master
CATEGORIES=	linux
MASTER_SITES=	https://gitlab.com/limitland/comixcursors/-/archive/master/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://gitlab.com/limitland/comixcursors/-/archive/master/
COMMENT=	X11 mouse theme with a comics feeling
LICENSE=	gnu-gpl-v2

DEPENDS+=	zip-[0-9]*:../../archivers/zip
DEPENDS+=	ImageMagick6-[0-9]*:../../graphics/ImageMagick6
DEPENDS+=	inkscape-[0-9]*:../../graphics/inkscape
DEPENDS+=	xcursorgen-[0-9]*:../../x11/xcursorgen
DEPENDS+=	png-[0-9]*:../../graphics/png

USE_TOOLS+=	gmake
WRKSRC=		${WRKDIR}/comixcursors-master

.include "../../mk/bsd.prefs.mk"
MAKE_FLAGS+=	PREFIX=${PREFIX}
MAKE_FLAGS+=	ICONSDIR=${DESTDIR}${PREFIX}/share/icons

post-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/share/icons/
	cd ${DESTDIR}${PREFIX}/share/icons/ && cat ${FILESDIR}/*.tar.gz | ${TAR} -xzf - -i 

.include "../../mk/bsd.pkg.mk"
