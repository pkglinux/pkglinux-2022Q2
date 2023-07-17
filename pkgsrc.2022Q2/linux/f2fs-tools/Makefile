# $NetBSD$

GITHUB_TAG=	refs/tags/v${PKGVERSION_NOREV}
DISTNAME=	f2fs-tools-1.9.0
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=jaegeuk/}

MAINTAINER=	INSERT_YOUR_MAIL_ADDRESS_HERE # or use pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/jaegeuk/f2fs-tools/
COMMENT=	FS exploiting NAND flash memory-based storage devices
LICENSE=	gnu-gpl-v2

USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake pkg-config autoconf automake m4 intltools msgfmt xgettext
USE_LIBTOOL=		no
GNU_CONFIGURE=		yes
WRKSRC=			${WRKDIR}/${DISTNAME}

pre-configure:
		cd ${WRKSRC} && ./autogen.sh --prefix=${PREFIX}

.include "../../devel/libuuid/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
