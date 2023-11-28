# $NetBSD$

GITHUB_PROJECT=	genfstab
DISTNAME=	genfstab-24
CATEGORIES=	native
MASTER_SITES=	${MASTER_SITE_GITHUB:=scardracs/}
GITHUB_RELEASE=	24

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/scardracs/genfstab/
COMMENT=	Script that automatically compile the /etc/fstab file
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

USE_TOOLS+=		gmake asciidoc

DEPENDS+=	asciidoc-[0-9]*:../../textproc/asciidoc

HAS_CONFIGURE=		no
#NO_BUILD=		yes
NO_CONFIGURE=		yes
GNU_CONFIGURE=		no

BLDPRE=		${WRKDIR}${PREFIX}/native
DSTPRE=		${DESTDIR}${PREFIX}/native

do-build:
	cd ${WRKDIR} && ${GMAKE} -j${MAKE_JOBS} DESTDIR=${BLDPRE} install

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.include "../../mk/bsd.pkg.mk"
