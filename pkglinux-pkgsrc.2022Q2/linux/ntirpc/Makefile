# $NetBSD$

GITHUB_TAG=	refs/tags/v${PKGVERSION_NOREV}
DISTNAME=	ntirpc-1.5.2
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=linuxbox2/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/linuxbox2/ntirpc/
COMMENT=	NTIRPC - Transport-independent RPC (TI-RPC)
LICENSE=	mit

USE_LANGUAGES=	c c++
USE_TOOLS+=	gmake pkgconfig autoconf automake m4
USE_CMAKE=	yes
WRKSRC=		${WRKDIR}/${DISTNAME}

post-extract:
	cd ${WRKSRC} && rm -rfv * && cp -av ${FILESDIR}/ntirpc-ibm2.7/* .

.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
