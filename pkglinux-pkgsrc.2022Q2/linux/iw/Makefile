# $NetBSD$

DISTNAME=	iw-5.19
CATEGORIES=	linux
MASTER_SITES=	https://mirrors.edge.kernel.org/pub/software/network/iw/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://mirrors.edge.kernel.org/pub/software/network/iw/
COMMENT=	This is 'iw', a tool to use nl80211.
LICENSE=		gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

NO_CONFIGURE=		yes
USE_TOOLS+=		gmake pkg-config
USE_LANGUAGES=		c c++

#TOOLS_PLATFORM.awk?=		${PREFIX}/bin/nawk
#TOOLS_PLATFORM.sed?=		${PREFIX}/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed?=		/pkg/bin/gsed

USE_PKGLOCALEDIR=	yes

MAKE_ENV+=		PREFIX=${PREFIX}

.include "../../linux/libnl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
