# $NetBSD: Makefile,v 1.42 2022/06/15 14:02:36 taca Exp $

DISTNAME=	bind-${BIND_VERSION}
PKGNAME=	${DISTNAME:S/-P/pl/}
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.isc.org/isc/bind9/${BIND_VERSION}/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.isc.org/software/bind/
COMMENT=	Berkeley Internet Name Daemon implementation of DNS, version 9.16
LICENSE=	mpl-2.0

CONFLICTS+=	host-[0-9]*

MAKE_JOBS_SAFE=	no

BIND_VERSION=	9.16.30

BUILD_DEFS+=	BIND_DIR VARBASE

# Fix PKG_FAIL_REASON+="No usable termcap library found on the system."
USE_BUILTIN.zlib=	no
USE_BUILTIN.openssl=	no
USE_BUILTIN.readline=	no
USE_BUILTIN.ncurses=	no
USE_BUILTIN.ncursesw=	no
.include "../../mk/termcap.buildlink3.mk"
.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])

#USE_LANGUAGES=		c c++
CONFIGURE_ARGS+=	--host=${MACHINE_GNU_PLATFORM}
CONFIGURE_ENV+=		BUILD_CC=${PREFIX}/gcc6/bin/gcc
CONFIGURE_ENV+=		CC_FOR_BUILD=${PREFIX}/gcc6/bin/gcc
CFLAGS+=	-DHAVE_OPENSSL_INIT_CRYPTO=1
CFLAGS+=	-DHAVE_OPENSSL_INIT_SSL=1
CFLAGS+=	-DHAVE_EVP_CIPHER_CTX_NEW=1
CFLAGS+=	-DHAVE_EVP_CIPHER_CTX_FREE=1
CFLAGS+=	-DHAVE_EVP_MD_CTX_NEW=1
CFLAGS+=	-DHAVE_EVP_MD_CTX_FREE=1
CFLAGS+=	-DHAVE_EVP_MD_CTX_RESET=1
CFLAGS+=	-DHAVE_HMAC_CTX_NEW=1
CFLAGS+=	-DHAVE_HMAC_CTX_FREE=1
CFLAGS+=	-DHAVE_HMAC_CTX_RESET=1
CFLAGS+=	-DHAVE_HMAC_CTX_GET_MD=1
CFLAGS+=	-DHAVE_DH_GET0_KEY=1
CFLAGS+=	-DHAVE_BN_GENCB_NEW=1
CFLAGS+=	-DHAVE_ECDSA_SIG_GET0=1
CFLAGS+=	-DHAVE_RSA_SET0_KEY=1
.include "../../sysutils/libcap/buildlink3.mk"
.endif

.include "options.mk"

USE_TOOLS+=		autoconf pax perl pkg-config
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
CHECK_FILES_SKIP=	bin/tests/system/system-test-driver.sh
MAKE_ENV+=		WRKDIR=${WRKDIR} PREFIX=${PREFIX}

.if ${OPSYS} == "Linux" && !exists(/usr/include/sys/capability.h)
CONFIGURE_ARGS+=		--disable-linux-caps
.endif

CONFIGURE_ARGS+=		--with-libtool
CONFIGURE_ARGS+=		--sysconfdir=${PKG_SYSCONFDIR}
CONFIGURE_ARGS+=		--localstatedir=${VARBASE}
CONFIGURE_ARGS+=		--with-openssl=${SSLBASE:Q}
CONFIGURE_ARGS+=		--with-python=no
CONFIGURE_ARGS.DragonFly+=	--disable-kqueue
CONFIGURE_ARGS.SunOS+=		--disable-epoll
CONFIGURE_ARGS+=		--disable-epoll

BUILDLINK_TRANSFORM.SunOS+=	rm:-zrelax=transtls

PKG_GROUPS_VARS+=	BIND_GROUP
PKG_USERS_VARS=		BIND_USER

PKG_GROUPS=		${BIND_GROUP}
PKG_USERS=		${BIND_USER}:${BIND_GROUP}

PKG_GECOS.${BIND_USER}=	Named pseudo-user
PKG_HOME.${BIND_USER}=	${BIND_DIR}

DOCS=			CHANGES HISTORY OPTIONS README

FILES_SUBST+=		BIND_GROUP=${BIND_GROUP} \
			BIND_USER=${BIND_USER} PAX=${PAX:Q} \
			SSLBASE=${SSLBASE}
MESSAGE_SUBST+=		BIND_DIR=${BIND_DIR} BIND_USER=${BIND_USER}

DOCDIR=			share/doc/bind9

RCD_SCRIPTS=		named9
SMF_METHODS=		named

INSTALL_MAKE_FLAGS+=	sysconfdir=${PREFIX}/share/examples/bind9
CONF_FILES+=		share/examples/bind9/bind.keys \
			${PKG_SYSCONFDIR}/bind.keys

INSTALLATION_DIRS+=	${DOCDIR}

pre-configure:
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
	cd ${WRKSRC} && cp -v ${FILESDIR}/configure.ac.cross configure.ac
.endif
	cd ${WRKSRC} && autoconf -f

post-install:
.for f in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${f} ${DESTDIR}${PREFIX}/${DOCDIR}
.endfor

.include "../../mk/atomic64.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../devel/libuv/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
