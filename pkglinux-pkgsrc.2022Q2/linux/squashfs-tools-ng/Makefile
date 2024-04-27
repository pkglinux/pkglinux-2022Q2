# $NetBSD$

DISTNAME=	squashfs-tools-ng-1.2.0
#DISTNAME=	squashfs-tools-ng-1.1.4
#DISTNAME=	squashfs-tools-ng-1.1.2
CATEGORIES=	linux
MASTER_SITES=	https://infraroot.at/pub/squashfs/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://infraroot.at/pub/squashfs/
COMMENT=	highly compressed, read only file system
LICENSE=	gnu-gpl-v3

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config

PKGCONFIG_OVERRIDE+=	lib/sqfs/libsquashfs1.pc.in

CONFIGURE_ARGS+=	--with-gzip
CONFIGURE_ARGS+=	--with-bzip2
CONFIGURE_ARGS+=	--with-xz
CONFIGURE_ARGS+=	--with-zstd

#post-extract:

#	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/0001-Fix-printf-format-specifiers-used-for-generating-tar.patch
#	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/0002-tar2sqfs-Fix-integer-truncation-issue-when-appending.patch
#	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/0003-Fix-libsquashfs-directory-writer-size-accounting.patch
#	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/0004-Fix-symlink-path-traversal-in-rdsqaushfs.patch

#	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/0001-Fix-libfstree-double-free-in-error-path.patch
#	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/0002-Fix-libfstree-actually-use-a-full-32-bit-hard-link-c.patch
#	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/0003-Fix-update-mempool-accounting-when-freeing-an-object.patch
#	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/0004-libsqfs-Fix-an-overzealous-bounds-check-in-the-block.patch
#	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/0005-libsqfs-Initialize-the-return-value-in-sqfs_compress.patch

.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
CFLAGS+=	--shared -fPIC
USE_LIBTOOL=		yes
USE_BUILTIN.bzip2=	no
MAKE_ENV+=		PREFIX=${PREFIX}
MAKE_ENV+=		BUILD_CC=${PREFIX}/gcc6/bin/gcc
MAKE_ENV+=		CC_FOR_BUILD=${PREFIX}/gcc6/bin/gcc
PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.endif

.include "../../devel/zlib/buildlink3.mk"
.include "../../archivers/bzip2/buildlink3.mk"
.include "../../archivers/xz/buildlink3.mk"
.include "../../archivers/zstd/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
