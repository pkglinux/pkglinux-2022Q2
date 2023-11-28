# $NetBSD$

DISTNAME=	man-pages-5.05
CATEGORIES=	linux
MASTER_SITES=	https://www.kernel.org/pub/linux/docs/man-pages/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.kernel.org/pub/linux/docs/man-pages/
COMMENT=	Linux man pages for sections 1 through 8
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

#USE_LANGUAGES=		c c++

USE_TOOLS+=		gmake m4 makeinfo sed:run tar:build perl
#NO_BUILD=		yes
NO_CONFIGURE=		yes

MAKE_ENV+=		prefix=${PREFIX}

.include "../../mk/bsd.pkg.mk"
