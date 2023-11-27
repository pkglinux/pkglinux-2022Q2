# $NetBSD$

#DISTNAME=	dracut-056
DISTNAME=	dracut-057
CATEGORIES=	native
MASTER_SITES=	https://mirrors.edge.kernel.org/pub/linux/utils/boot/dracut/
#MASTER_SITES=	https://codeload.github.com/dracutdevs/dracut/tar.gz/refs/tags/057
#EXTRACT_SUFX=	.tar.xz
EXTRACT_SUFX=	.tar.gz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://mirrors.edge.kernel.org/pub/linux/utils/boot/dracut/
COMMENT=	An event driven initramfs infrastructure
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

USE_LANGUAGES=		c c++

HAS_CONFIGURE=	yes
#NO_BUILD=	yes
#NO_CONFIGURE=	yes
#GNU_CONFIGURE=	no
USE_TOOLS+=	gmake pkg-config

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

#DEPENDS+=	mtools-[0-9]*:../../sysutils/mtools
#DEPENDS+=	libisoburn-[0-9]*:../../sysutils/libisoburn
#DEPENDS+=	cdrtools-[0-9]*:../../sysutils/cdrtools
DEPENDS+=	squashfs-[0-9]*:../../linux/squashfs
DEPENDS+=	busybox-[0-9]*:../../native/busybox
#DEPENDS+=	syslinux-[0-9]*:../../native/syslinux

#	cd ${WRKSRC} && sed -i 's/blkid/blkid.static/' dracut.sh
post-extract:
	${MKDIR} -v ${BLDPRE}
	${CP} -av ${FILESDIR}/modules.d/* ${WRKSRC}/modules.d/

do-configure:
	cd ${BLDDIR} && \
	${WRKSRC}/configure	\
		--prefix=/usr	\
		--sysconfdir=/etc

do-build:
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${GMAKE} DESTDIR=${BLDPRE} install-strip || ${GMAKE} DESTDIR=${BLDPRE} install)

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.include "../../linux/kmod/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
