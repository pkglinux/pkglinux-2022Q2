# $NetBSD$

DISTNAME=	hackneyed-x11-cursors-0.8.2
CATEGORIES=	linux
MASTER_SITES=	https://gitlab.com/Enthymeme/hackneyed-x11-cursors/-/archive/0.8.2/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://gitlab.com/Enthymeme/hackneyed-x11-cursors/-/archive/0.8.2/
COMMENT=	resembing old Windows 3.x/NT 3.x cursors
LICENSE=	gnu-gpl-v2

DEPENDS+=	zip-[0-9]*:../../archivers/zip
DEPENDS+=	ImageMagick6-[0-9]*:../../graphics/ImageMagick6
DEPENDS+=	inkscape-[0-9]*:../../graphics/inkscape
DEPENDS+=	xcursorgen-[0-9]*:../../x11/xcursorgen
DEPENDS+=	png-[0-9]*:../../graphics/png

USE_TOOLS+=	gmake
WRKSRC=			${WRKDIR}/hackneyed-x11-cursors-0.8.2

.include "../../mk/bsd.prefs.mk"
MAKE_FLAGS+=	PREFIX=${PREFIX}

post-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/share/icons/
	cd ${DESTDIR}${PREFIX}/share/icons/ && cat ${FILESDIR}/*.tar.gz | ${TAR} -xzf - -i 

#.include "../../graphics/ImageMagick6/buildlink3.mk"
#.include "../../graphics/inkscape/buildlink3.mk"
#.include "../../x11/xcursorgen/buildlink3.mk"
#.include "../../graphics/png/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
