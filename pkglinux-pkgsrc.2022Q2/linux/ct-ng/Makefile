# $NetBSD$

DISTNAME=	crosstool-ng-1.26.0
CATEGORIES=	linux
MASTER_SITES=	http://crosstool-ng.org/download/crosstool-ng/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://crosstool-ng.org/download/crosstool-ng/
COMMENT=	versatile (cross) toolchain generator
LICENSE=	gnu-gpl-v2

TOOLS_PLATFORM.awk?=		${PREFIX}/bin/gawk
TOOLS_PLATFORM.sed?=		${PREFIX}/bin/gsed

USE_TOOLS+=	gmake
USE_LIBTOOL=	no
USE_PKGLOCALEDIR=	yes

GNU_CONFIGURE=	yes

post-install:
	gsed -e "s|${WRKDIR}/.tools||g" -i ${DESTDIR}${PREFIX}/bin/ct-ng
	gsed -e "s|${WRKDIR}/.tools||g" -i ${DESTDIR}${PREFIX}/share/crosstool-ng/paths.sh
	gsed -e "s|${WRKDIR}/.cwrapper|${PREFIX}|g" -i ${DESTDIR}${PREFIX}/bin/ct-ng
	gsed -e "s|${WRKDIR}/.cwrapper|${PREFIX}|g" -i ${DESTDIR}${PREFIX}/share/crosstool-ng/paths.sh
	gsed -e 's|export python="python3.9"|export python="${PREFIX}/bin/python3.9"|g' -i ${DESTDIR}${PREFIX}/share/crosstool-ng/paths.sh
	gsed -e 's|export install="/bin/install -c -o root -g root"|export install="/bin/install"|g' -i ${DESTDIR}${PREFIX}/share/crosstool-ng/paths.sh
	gsed -e 's|export libtool="${PREFIX}/bin/libtool "|export libtool="${PREFIX}/bin/libtool"|g' -i ${DESTDIR}${PREFIX}/share/crosstool-ng/paths.sh

.include "../../devel/ncurses/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
