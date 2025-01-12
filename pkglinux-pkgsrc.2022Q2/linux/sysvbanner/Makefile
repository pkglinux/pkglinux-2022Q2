# $NetBSD$

DISTNAME=	sysvbanner-1.0
CATEGORIES=	linux
MASTER_SITES=	http://repos.pkglinux.top/distfiles/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://repos.pkglinux.top/distfiles/
COMMENT=	PD version of the SYS V banner program
LICENSE=	mit

WRKSRC=	${WRKDIR}/sysvbanner-1.0.orig

USE_LANGUAGES=	c

do-build:
	cd ${WRKSRC} && gmake -j${MAKE_JOBS}

do-install:
	${MKDIR} -pv ${DESTDIR}${PREFIX}/bin/
	cd ${WRKSRC} && ${CP} -av banner ${DESTDIR}${PREFIX}/bin/sysvbanner

.include "../../mk/bsd.pkg.mk"
