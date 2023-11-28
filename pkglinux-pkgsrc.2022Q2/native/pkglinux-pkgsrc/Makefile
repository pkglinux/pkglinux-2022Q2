# $NetBSD$

PKGNAME=	pkglinux-pkgsrc-${PREFIX:S/\///}
CATEGORIES=	native
MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	pkgsrc-2022Q2 modified for pkglinux
LICENSE=	modified-bsd

ONLY_FOR_PLATFORM=	Linux-*-*

USE_LANGUAGES=	# none
NO_CHECKSUM=		yes
HAS_CONFIGURE=		no
NO_BUILD=		yes
NO_CONFIGURE=		yes
GNU_CONFIGURE=		no

do-install:
	${MKDIR} -pv ${DESTDIR}${PREFIX}/native/
	cd ${DESTDIR}${PREFIX}/native/ && gtar -xJvf /root/repos/pkglinux-pkgsrc/pkglinux-pkgsrc.${PREFIX:S/\///}.txz

.include "../../mk/bsd.pkg.mk"
