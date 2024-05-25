# $NetBSD: Makefile,v 1.1 2014/05/19 12:22:06 adam Exp $

.include "Makefile.common"

PKGNAME=	lib${DISTNAME:S/-3g_ntfsprogs//}
CATEGORIES=	sysutils

COMMENT=	Linux-NTFS project utilities for the Windows NT Filesystem

CONFIGURE_ARGS+=	--disable-ntfs-3g
CONFIGURE_ARGS+=	--disable-ntfsprogs

post-install:
	lndir.sh -l sf ${PREFIX}/lib ${PREFIX}/native/usr/lib ${DESTDIR}

PLIST_SRC=
GENERATE_PLIST+= \
 	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;

.include "../../mk/bsd.pkg.mk"
