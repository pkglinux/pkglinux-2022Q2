# $NetBSD$

PKGNAME=	pkglinux-pkgsrc-${PREFIX:S/\///}
CATEGORIES=	native
MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	pkgsrc modified for pkglinux
LICENSE=	modified-bsd

ONLY_FOR_PLATFORM=	Linux-*-*

USE_LANGUAGES=	# none
NO_CHECKSUM=		yes
HAS_CONFIGURE=		no
NO_BUILD=		yes
NO_CONFIGURE=		yes
GNU_CONFIGURE=		no

PKG_PRESERVE=		yes

do-install:
	${MKDIR} -pv ${DESTDIR}${PREFIX}/native/
	cd ${DESTDIR}${PREFIX}/native/ && gtar -xJvf /root/dist/pkglinux-pkgsrc.${PREFIX:S/\///}.txz

GENERATE_PLIST+= \
    	cd ${DESTDIR}${PREFIX} && \
	${FIND} native \( -type f -o -type l \) -print | ${SORT} ;

.include "../../mk/bsd.pkg.mk"
