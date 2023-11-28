# $NetBSD$

DISTNAME=	libpipeline-1.5.2
CATEGORIES=	linux
MASTER_SITES=	http://download.savannah.gnu.org/releases/libpipeline/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://download.savannah.gnu.org/releases/libpipeline/
COMMENT=	setting up and running pipelines of processes
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

PKGCONFIG_OVERRIDE+=	lib/libpipeline.pc.in

.include "../../mk/bsd.pkg.mk"
