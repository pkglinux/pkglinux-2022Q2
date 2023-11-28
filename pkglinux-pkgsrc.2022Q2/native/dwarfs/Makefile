# $NetBSD$

DISTNAME=	dwarfs-0.6.1
CATEGORIES=	linux
MASTER_SITES=	https://codeload.github.com/mhx/dwarfs/releases/

MAINTAINER=	use pkgsrc-users@NetBSD.org
HOMEPAGE=	https://codeload.github.com/mhx/dwarfs/releases/
COMMENT=	fast high compression read-only file system
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

HAS_CONFIGURE=		no
NO_BUILD=		yes
NO_CONFIGURE=		yes
GNU_CONFIGURE=		no

pre-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/

do-install:
	${CP} -av ${FILESDIR}/native/* ${DESTDIR}${PREFIX}/native/

.include "../../mk/bsd.pkg.mk"
