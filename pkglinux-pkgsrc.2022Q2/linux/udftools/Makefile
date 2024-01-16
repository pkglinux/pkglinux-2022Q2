# $NetBSD$

GITHUB_PROJECT=	udftools
DISTNAME=	udftools-2.3
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=pali/}
GITHUB_RELEASE=	2.3

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/pali/udftools/
COMMENT=	Linux tools for UDF filesystems and DVD/CD-R(W) drive
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake pkg-config
USE_LIBTOOL=	yes

#pre-configure:
#	cd ${WRKSRC} && ./autogen.sh

.include "../../devel/readline/buildlink3.mk"
.include "../../linux/eudev/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
