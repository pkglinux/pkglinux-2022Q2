# $NetBSD: Makefile,v 1.9 2012/10/03 09:10:42 asau Exp $

DISTNAME=	nfs-utils-1.0.6
#DISTNAME=	nfs-utils-1.0.12
#DISTNAME=	nfs-utils-1.0.5
#DISTNAME=	nfs-utils-1.0.12
#DISTNAME=	nfs-utils-1.3.4
#DISTNAME=	nfs-utils-1.0.6
PKGNAME=	linux-${DISTNAME}
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nfs/}
LICENSE=	gnu-gpl-v2

MAINTAINER=	reed@reedmedia.net
HOMEPAGE=	https://sourceforge.net/projects/nfs/
COMMENT=	Linux NFS client and server utilities

USE_LANGUAGES=	c c++
GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake

MAKE_JOBS=		1

# uses linux/version.h and only tested under Linux
ONLY_FOR_PLATFORM=	Linux-*-*

RCD_SCRIPTS=		mountd nfsd nfslocking

CONFIGURE_ARGS+=	--prefix=${PREFIX}
#CONFIGURE_ARGS+=	--with-tcp-wrappers=/usr/lib
CONFIGURE_ARGS+=	--enable-nfsv3
CONFIGURE_ARGS+=	--disable-nfsv4
CONFIGURE_ARGS+=	--disable-gss
CONFIGURE_ARGS+=	--disable-sbin-override
CONFIGURE_ARGS+=	--with-statedir=${PREFIX}/var/lib/nfs
CONFIGURE_ARGS+=	--with-nfsconfig=${PREFIX}/etc/nfs.conf
#CONFIGURE_ARGS+=	--with-statduser=rpc
CONFIGURE_ARGS+=	--with-start-statd=${PREFIX}/sbin/start-statd
CONFIGURE_ARGS+=	--with-modprobedir=${PREFIX}/native/etc/modprobe.d

CFLAGS+=	-ltirpc
LDFLAGS+=	-ltirpc

MAKE_ENV+=	install_prefix=${DESTDIR}

.include "../../linux/libtirpc/buildlink3.mk"
.include "../../devel/libevent/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../linux/keyutils/buildlink3.mk"
#.include "../../security/mit-krb5/buildlink3.mk"
.include "../../security/tcp_wrappers/buildlink3.mk"
#.include "../../linux/libnfsidmap/buildlink3.mk"
.include "../../linux/libnl/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../textproc/libxml/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
