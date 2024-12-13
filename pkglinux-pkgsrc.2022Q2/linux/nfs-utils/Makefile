# $NetBSD$

DISTNAME=	nfs-utils-2.8.1
CATEGORIES=	linux
MASTER_SITES=	https://www.kernel.org/pub/linux/utils/nfs-utils/2.8.1/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.kernel.org/pub/linux/utils/nfs-utils/2.8.1/
COMMENT=	the Linux NFS userland utility package
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	gmake pkg-config


# uses linux/version.h and only tested under Linux
ONLY_FOR_PLATFORM=	Linux-*-*

PKGCONFIG_OVERRIDE+=	support/nfsidmap/libnfsidmap.pc.in

RCD_SCRIPTS=		rpcbind nfsd

CONFIGURE_ARGS+=	--disable-nfsv4
CONFIGURE_ARGS+=	--enable-caps
CONFIGURE_ARGS+=	--disable-gss
CONFIGURE_ARGS+=	--prefix=${PREFIX}
CONFIGURE_ARGS+=	LIBS="-lsqlite3 -levent_core"
CONFIGURE_ARGS+=	--disable-sbin-override
CONFIGURE_ARGS+=	--with-statedir=${PREFIX}/var/lib/nfs
CONFIGURE_ARGS+=	--with-nfsconfig=${PREFIX}/etc/nfs.conf

CONFIGURE_ENV+=	LIBMOUNT_CFLAGS="-I/usr/include/libmount -I${PREFIX}/include/blkid -I${PREFIX}/include/uuid -I${PREFIX}/include"
CONFIGURE_ENV+=	LIBMOUNT_LIBS="-L/usr/lib -lmount"
CONFIGURE_ENV+=	LIBREADLINE_CFLAGS="-I${PREFIX}/include/readline"
CONFIGURE_ENV+=	LIBREADLINE_LIBS="-L${PREFIX}/lib -lreadline"


.include "../../linux/libtirpc/buildlink3.mk"
.include "../../devel/libevent/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../linux/keyutils/buildlink3.mk"
#.include "../../security/mit-krb5/buildlink3.mk"
#.include "../../security/tcp_wrappers/buildlink3.mk"
.include "../../linux/libnl/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
#.include "../../textproc/libxml/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
