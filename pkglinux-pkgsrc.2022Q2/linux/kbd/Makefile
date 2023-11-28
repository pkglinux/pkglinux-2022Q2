# $NetBSD$

DISTNAME=	kbd-2.2.0
CATEGORIES=	linux
MASTER_SITES=	https://www.kernel.org/pub/linux/utils/kbd/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.kernel.org/pub/linux/utils/kbd/
COMMENT=	tools for managing Linux console
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

USE_LANGUAGES=		c c++

GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config
USE_TOOLS+=		gmake makeinfo sed:run tar:build perl
USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE+=	src/libkeymap/libkeymap.pc.in

CONFIGURE_ARGS+=	--disable-vlock

post-extract:
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/kbd-2.2.0-backspace-1.patch
	sed -i 's/\(RESIZECONS_PROGS=\)yes/\1no/g' ${WRKSRC}/configure
	sed -i 's/resizecons.8 //' ${WRKSRC}/docs/man/man8/Makefile.in

post-build:
	${MKDIR} -v ${DESTDIR}${PREFIX}/share/doc/kbd-2.2.0/
	${CP} -av ${WRKSRC}/docs/doc/* ${DESTDIR}${PREFIX}/share/doc/kbd-2.2.0/

.include "../../mk/bsd.pkg.mk"
