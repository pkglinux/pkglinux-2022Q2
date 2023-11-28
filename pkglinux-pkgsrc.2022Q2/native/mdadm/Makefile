# $NetBSD: Makefile,v 1.7 2012/11/25 23:32:27 othyro Exp $
#

#DISTNAME=		mdadm-1.8.1
DISTNAME=		mdadm-4.2
CATEGORIES=		sysutils linux
MASTER_SITES=		http://www.kernel.org/pub/linux/utils/raid/mdadm/
#MASTER_SITES=		http://www.cse.unsw.edu.au/~neilb/source/mdadm/ \
#			http://www.kernel.org/pub/linux/utils/raid/mdadm/
#EXTRACT_SUFX=		.tar.bz2
EXTRACT_SUFX=		.tar.xz
LICENSE=		gnu-gpl-v2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.cse.unsw.edu.au/~neilb/source/mdadm/ANNOUNCE
COMMENT=		RAID management for Linux systems

ONLY_FOR_PLATFORM=	Linux-*-*

USE_LANGUAGES=		c c++

#NO_BUILD=	yes
#NO_CONFIGURE=	yes
#GNU_CONFIGURE=	no
USE_TOOLS+=	gmake

USE_NATIVE_GCC=	yes
#USE_NATIVE_GCC=	no
USE_PKGSRC_GCC=		no
#GCC_REQD+=		6

PKGSRC_USE_SSP=		no
MKPIE_SUPPORTED=	no
PKGSRC_MKPIE=		no
#STACK_CHECK_SUPPORTED=	no
#PKGSRC_USE_STACK_CHECKD=	no
#SSP_SUPPORTED=		yes

GNU_CONFIGURE=		no
#NO_BUILD=		yes
NO_CONFIGURE=		yes
#GNU_CONFIGURE_PREDIR=	${PREFIX}

#MAKE_ENV+=	DESTDIR=${PREFIX}/native

do-build:
	cd ${WRKSRC} && ${GMAKE} DESTDIR=${DESTDIR}/${PREFIX}/native install -j${MAKE_JOBS}


.include "../../linux/eudev/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
