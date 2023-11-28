# $NetBSD$

#DISTNAME=	linux-firmware-20211027
DISTNAME=	linux-firmware-20220815
#DISTNAME=	linux-firmware-20230625
CATEGORIES=	native
MASTER_SITES=	https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/snapshot/
MASTER_SITES=	https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/snapshot/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/snapshot/
COMMENT=	firmware blobs for use with the Linux kernel

ONLY_FOR_PLATFORM=	Linux-*-*

HAS_CONFIGURE=		no
NO_CONFIGURE=		yes
GNU_CONFIGURE=		no
NO_BUILD=		yes

do-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/lib/firmware/
	${CP} -av ${WRKSRC}/* ${DESTDIR}${PREFIX}/native/lib/firmware/
	${CP} -av ${FILESDIR}/intel-ucode ${DESTDIR}${PREFIX}/native/lib/firmware/
	cd ${DESTDIR}${PREFIX}/native/lib/firmware/ && find . -type f -execdir xz -C crc32 -z {} +

.include "../../mk/bsd.pkg.mk"
