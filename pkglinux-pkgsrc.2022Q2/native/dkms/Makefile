# $NetBSD$

GITHUB_TAG=	refs/tags/v${PKGVERSION_NOREV}
DISTNAME=	dkms-3.0.12
CATEGORIES=	native
MASTER_SITES=	${MASTER_SITE_GITHUB:=dell/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/dell/dkms/
COMMENT=	Dynamic Kernel Module System (DKMS)
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-* # Uses Linux kernel headers

#USE_LANGUAGES=		c c++
#USE_NATIVE_GCC=	yes
#USE_NATIVE_GCC=	no
#USE_PKGSRC_GCC=		no
#GCC_REQD+=		6

#PKGSRC_USE_SSP=		no
#MKPIE_SUPPORTED=	no
#PKGSRC_MKPIE=		no
#STACK_CHECK_SUPPORTED=	no
#PKGSRC_USE_STACK_CHECKD=	no
#SSP_SUPPORTED=		yes

#USE_TOOLS+=		gmake pkg-config intltools msgfmt xgettext perl
USE_TOOLS+=		gmake

WRKSRC=			${WRKDIR}/${DISTNAME}

GNU_CONFIGURE=		no
NO_BUILD=		yes
NO_CONFIGURE=		yes
PREDIR=			${PREFIX}/native
DSTPRE=			${DESTDIR}${PREDIR}


do-install:
	${MKDIR} -v ${DSTPRE}
	cd ${WRKSRC} && ${GMAKE} DESTDIR=${DSTPRE} install

.include "../../lang/python/tool.mk"
.include "../../mk/bsd.pkg.mk"
