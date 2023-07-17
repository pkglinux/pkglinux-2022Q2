# $NetBSD$

DISTNAME=	gptfdisk-1.0.9
CATEGORIES=	linux
MASTER_SITES=	https://sourceforge.net/projects/gptfdisk/files/gptfdisk/1.0.9/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://sourceforge.net/projects/gptfdisk/files/gptfdisk/1.0.9/
COMMENT=	GPT fdisk (aka gdisk, cgdisk, and sgdisk) and FixParts
LICENSE=	gnu-gpl-v2

USE_PKGLOCALEDIR=	yes
USE_LIBTOOL=		yes
NO_CONFIGURE=	yes
GNU_CONFIGURE=	no
USE_LANGUAGES=	c++
USE_TOOLS+=	gmake pkg-config

INSTALLATION_DIRS=	sbin

do-install:
	gstrip ${WRKSRC}/gdisk
	gstrip ${WRKSRC}/cgdisk
	gstrip ${WRKSRC}/sgdisk
	gstrip ${WRKSRC}/fixparts
	${CP} -v ${WRKSRC}/gdisk    ${DESTDIR}${PREFIX}/sbin/
	${CP} -v ${WRKSRC}/cgdisk   ${DESTDIR}${PREFIX}/sbin/
	${CP} -v ${WRKSRC}/sgdisk   ${DESTDIR}${PREFIX}/sbin/
	${CP} -v ${WRKSRC}/fixparts ${DESTDIR}${PREFIX}/sbin/

post-install:
	${MKDIR} ${DESTDIR}${PREFIX}/native/sbin/
	lndir.sh -l sf ${PREFIX}/sbin ${PREFIX}/native/sbin ${DESTDIR}

.include "../../devel/popt/buildlink3.mk"
.include "../../devel/libuuid/buildlink3.mk"
.include "../../devel/ncursesw/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
