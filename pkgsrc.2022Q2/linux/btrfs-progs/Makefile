# $NetBSD$

#DISTNAME=	btrfs-progs-v5.19.1
DISTNAME=	btrfs-progs-v5.13.1
#DISTNAME=	btrfs-progs-v5.4.1
PKGNAME=	${DISTNAME:S,-v,-,}
CATEGORIES=	linux
MASTER_SITES=	https://www.kernel.org/pub/linux/kernel/people/kdave/btrfs-progs/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.kernel.org/pub/linux/kernel/people/kdave/btrfs-progs/
COMMENT=	Btrfs is a copy on write (COW) filesystem for Linux
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config
USE_TOOLS+=	gmake
#USE_TOOLS+=	python3.8

#PYTHON_FOR_BUILD_ONLY=	tool

#CONFIGURE_ARGS+=	--prefix=${PREFIX}
#CONFIGURE_ARGS+=	--bindir=${PREFIX}/bin
#CONFIGURE_ARGS+=	--libdir=${PREFIX}/lib
#CONFIGURE_ARGS+=	--disable-zstd
#CONFIGURE_ARGS+=	--disable-documentation

#CONFIGURE_ENV+=		PKG_CONFIG_PATH=/usr/lib/pkgconfig
CONFIGURE_ENV+=		"EXT2FS_CFLAGS=-I/usr/include/ext2fs -I/usr/include/et"
CONFIGURE_ENV+=		"EXT2FS_LIBS=-lext2fs"
CONFIGURE_ENV+=		"COM_ERR_CFLAGS=-I/usr/include/et"
CONFIGURE_ENV+=		"COM_ERR_LIBS=-lcom_err"

PKGCONFIG_OVERRIDE+=	libbtrfsutil/libbtrfsutil.pc.in

#.include "../../lang/python38/buildlink3.mk"
.include "../../lang/python/tool.mk"
.include "../../archivers/zstd/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../devel/libblkid/buildlink3.mk"
.include "../../archivers/lzo/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
