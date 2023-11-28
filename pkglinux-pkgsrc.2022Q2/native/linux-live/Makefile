# $NetBSD$

DISTNAME=	linux-live-2.6
CATEGORIES=	native
MASTER_SITES=	https://github.com/Tomas-M/linux-live/archive/v2.6.tar.gz
#MASTER_SITES=	https://codeload.github.com/Tomas-M/linux-live/tar.gz/refs/tags/v2.10
EXTRACT_SUFX=	.tar.gz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/Tomas-M/linux-live
COMMENT=	shell scripts to create your own Live Linux

ONLY_FOR_PLATFORM=	Linux-*-*

DEPENDS+=	mtools-[0-9]*:../../sysutils/mtools
DEPENDS+=	libisoburn-[0-9]*:../../sysutils/libisoburn
DEPENDS+=	cdrtools-[0-9]*:../../sysutils/cdrtools
DEPENDS+=	squashfs-[0-9]*:../../linux/squashfs
DEPENDS+=	syslinux-[0-9]*:../../native/syslinux

HAS_CONFIGURE=		no
NO_CONFIGURE=		yes
GNU_CONFIGURE=		no
NO_BUILD=		yes

do-install:
	${CP} -av ${FILESDIR}/* ${WRKSRC}/
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/linux-live/
	${CP} -av ${WRKSRC}/* ${DESTDIR}${PREFIX}/native/linux-live/

.include "../../mk/bsd.pkg.mk"
