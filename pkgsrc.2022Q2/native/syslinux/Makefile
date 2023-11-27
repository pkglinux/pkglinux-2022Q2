# $NetBSD$

DISTNAME=	syslinux-6.04-pre1
PKGNAME=	syslinux-6.04.01
CATEGORIES=	native
MASTER_SITES=	https://mirrors.edge.kernel.org/pub/linux/utils/boot/syslinux/Testing/6.04/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://mirrors.edge.kernel.org/pub/linux/utils/boot/syslinux/Testing/6.04/
COMMENT=	Boot loader for the Linux operating system
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

USE_LANGUAGES=		c c++

#NO_BUILD=	yes
NO_CONFIGURE=	yes
GNU_CONFIGURE=	no
USE_TOOLS+=	gmake perl pkg-config

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

#GNU_CONFIGURE=		no
#NO_BUILD=		yes
#NO_CONFIGURE=		yes
#GNU_CONFIGURE_PREDIR=	${PREFIX}
PREDIR=			${PREFIX}/native
BLDDIR=			${WRKSRC}
BLDPRE=			${BLDDIR}${PREDIR}
DSTPRE=			${DESTDIR}${PREDIR}

post-extract:
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/syslinux-6.04-pre1.patch
	${MKDIR} -v ${BLDPRE}

do-build:
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${GMAKE} INSTALLROOT=${BLDPRE} install-strip || ${GMAKE} INSTALLROOT=${BLDPRE} install)

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.include "../../devel/nasm/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
