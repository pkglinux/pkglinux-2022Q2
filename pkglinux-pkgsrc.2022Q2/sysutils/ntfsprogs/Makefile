# $NetBSD: Makefile,v 1.12 2014/05/19 12:22:06 adam Exp $

.include "../../filesystems/libntfs/Makefile.common"

PKGNAME=	${DISTNAME:S/ntfs-3g_//}
CATEGORIES=	sysutils

COMMENT=	Linux-NTFS project utilities for the Windows NT Filesystem

CONFIGURE_ARGS+=	--disable-ntfs-3g

BUILD_DIRS=		ntfsprogs

post-install:
	${LN} -svf ../bin/ntfs-3g ${DESTDIR}${PREFIX}/sbin/mount.ntfs

.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
#CONFIGURE_ARGS+=	--enable-really-static
#CONFIGURE_ARGS+=	--disable-ntfs-3g
#CONFIGURE_ARGS+=	--disable-ntfsprogs
CONFIGURE_ARGS+=	--host=${MACHINE_GNU_PLATFORM}
CONFIGURE_ENV+=		BUILD_CC=${PREFIX}/gcc6/bin/gcc
CONFIGURE_ENV+=		CC_FOR_BUILD=${PREFIX}/gcc6/bin/gcc
USE_BUILTIN.libuuid=	no
.endif
PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;

.include "../../devel/libuuid/buildlink3.mk"
.include "../../filesystems/libntfs/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
