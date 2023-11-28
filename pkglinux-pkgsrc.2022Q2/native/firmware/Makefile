# $NetBSD$

PKGNAME=	firmware-20230407
CATEGORIES=	native
MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	sysv init scripts
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

USE_LANGUAGES=	# none
NO_CHECKSUM=		yes
HAS_CONFIGURE=		no
NO_BUILD=		yes
NO_CONFIGURE=		yes
GNU_CONFIGURE=		no

do-install:
	${MKDIR} -pv ${DESTDIR}${PREFIX}/native/lib/
	cd ${DESTDIR}${PREFIX}/native/lib/ && cp -av ${FILESDIR}/firmware .

#	cd ${DESTDIR}${PREFIX}/native/lib/ && gtar -xf ${FILESDIR}/firmware.tar

.include "../../mk/bsd.pkg.mk"
