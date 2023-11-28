# $NetBSD$

DISTNAME=	jfsutils-1.1.15
CATEGORIES=	linux
MASTER_SITES=	https://jfs.sourceforge.net/project/pub/

MAINTAINER=	INSERT_YOUR_MAIL_ADDRESS_HERE # or use pkgsrc-users@NetBSD.org
HOMEPAGE=	https://jfs.sourceforge.net/project/pub/
COMMENT=	IBM's Journaled File System (JFS) for Linux
LICENSE=	gnu-gpl-v2

USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake pkg-config autoconf automake m4 intltools msgfmt xgettext
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes

.include "../../devel/libuuid/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
