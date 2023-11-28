# $NetBSD$

PKGNAME=	profile-data-1.0
CATEGORIES=	native
MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	backup profile data
LICENSE=	mit

ONLY_FOR_PLATFORM=	Linux-*-*

USE_LANGUAGES=	# none
NO_CHECKSUM=		yes
HAS_CONFIGURE=		no
NO_BUILD=		yes
NO_CONFIGURE=		yes
GNU_CONFIGURE=		no

do-install:
	${MKDIR} -pv ${DESTDIR}${PREFIX}/native/root
.	for _txz in aero.txz \
		alex.config.txz \
		alex.fonts.txz \
		alex.kde.txz \
		alex.local.txz \
		alex.themes.txz
		${CP} -av /root/profile-data/${_txz} ${DESTDIR}${PREFIX}/native/root/
.	endfor

#	${CP} -av ${FILESDIR}/native ${DESTDIR}${PREFIX}/

.include "../../mk/bsd.pkg.mk"
