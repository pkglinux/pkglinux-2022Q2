# $NetBSD: Makefile,v 1.120 2022/04/20 20:09:55 wiz Exp $

DISTNAME=	rsync-3.2.4
CATEGORIES=	net
MASTER_SITES=	http://rsync.samba.org/ftp/rsync/
MASTER_SITES+=	http://rsync.samba.org/ftp/rsync/old-versions/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://rsync.samba.org/
COMMENT=	Network file distribution/synchronisation utility
LICENSE=	gnu-gpl-v3

USE_TOOLS+=		bash:run
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-rsyncd-conf=${PKG_SYSCONFDIR}/rsyncd.conf
CONFIGURE_ARGS+=	--with-included-zlib=no
PKG_SYSCONFSUBDIR=	rsync
TEST_TARGET=		test

REPLACE_SH=		cmdormsg
REPLACE_BASH=		rsync-ssl

RCD_SCRIPTS=		rsyncd
RCD_SCRIPT_SRC.rsyncd=	files/rsyncd.sh
SMF_NAME=		rsyncd

SUBST_CLASSES+=		paths
SUBST_MESSAGE.paths=	Fixing hardcoded paths.
SUBST_STAGE.paths=	pre-configure
SUBST_FILES.paths=	rsync.1 rsyncd.conf.5
SUBST_SED.paths=	-e 's|/etc/rsyncd|${PKG_SYSCONFDIR}/rsyncd|g'
SUBST_SED.paths+=	-e 's|/usr/bin/rsync|${PREFIX}/bin/rsync|g'

.include "options.mk"

.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
CONFIGURE_ARGS+=	--host=${MACHINE_GNU_PLATFORM}
TOOLS_PLATFORM.awk?=		${PREFIX}/bin/gawk
TOOLS_PLATFORM.sed=		${PREFIX}/bin/gsed
#CFLAGS+=	-fPIC
#CFLAGS+=	--shared -fPIC -UHAVE_STRLCPY
CFLAGS+=	--shared -fPIC
USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_BUILTIN.openssl=	no
USE_BUILTIN.zlib=	no
USE_BUILTIN.iconv=	no
#MAKE_ENV+=		PREFIX=${PREFIX}
CONFIGURE_ENV+=		BUILD_CC=${PREFIX}/gcc6/bin/gcc
CONFIGURE_ENV+=		CC_FOR_BUILD=${PREFIX}/gcc6/bin/gcc
#CONFIGURE_ARGS+=	--disable-acl-support
#CONFIGURE_ARGS+=	--disable-openssl
#CONFIGURE_ARGS+=	--disable-zstd
#CONFIGURE_ARGS+=	--disable-lz4
#CONFIGURE_ARGS+=	--disable-xxhash
#CONFIGURE_ARGS+=	--disable-md2man
#CONFIGURE_ARGS+=	--disable-iconv
#CONFIGURE_ARGS+=	--disable-iconv-open
#USE_TOOLS+=		gmake pkg-config autoconf automake m4 intltools msgfmt xgettext
#pre-configure:
#	cd ${WRKSRC} && autoconf -f

USE_FEATURES=		nbcompat

.include "../../archivers/zstd/buildlink3.mk"
.include "../../sysutils/attr/buildlink3.mk"
PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.endif

.include "../../archivers/lz4/buildlink3.mk"
.include "../../archivers/zstd/buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/popt/buildlink3.mk"
.include "../../devel/xxhash/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
