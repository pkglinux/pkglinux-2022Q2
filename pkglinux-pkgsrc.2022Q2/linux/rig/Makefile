# $NetBSD$

DISTNAME=	rig-1.11
CATEGORIES=	linux
MASTER_SITES=	https://sourceforge.net/projects/rig/files/rig/1.11/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://sourceforge.net/projects/rig/files/rig/1.11/
COMMENT=	Random Identity Generator generates fake identities.
LICENSE=	mit

USE_LANGUAGES=	c++

do-build:
	cd ${WRKSRC} && PREFIX=${PREFIX} ${MAKE} -j${MAKE_JOBS}

do-install:
	${MKDIR} -pv ${DESTDIR}${PREFIX}/bin/
	${MKDIR} -pv ${DESTDIR}${PREFIX}/man/man6/
	cd ${WRKSRC} && PREFIX=${PREFIX} DESTDIR=${DESTDIR} ${MAKE} install

.include "../../mk/bsd.pkg.mk"
