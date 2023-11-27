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
	${CP} -av ${FILESDIR}/native ${DESTDIR}${PREFIX}/

.include "../../mk/bsd.pkg.mk"
