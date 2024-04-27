# $NetBSD$

GITHUB_TAG=	refs/tags/v${PKGVERSION_NOREV}
DISTNAME=	libcap-ng-0.8.3
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=stevegrubb/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/stevegrubb/libcap-ng/
COMMENT=	make programming with posix capabilities easier.
LICENSE=	gnu-gpl-v2

#CONFLICTS=	selinux-[0-9]*

WRKSRC=			${WRKDIR}/${DISTNAME}

GNU_CONFIGURE=		yes
USE_TOOLS+=		gmake pkg-config
USE_TOOLS+=		autoconf automake
USE_LIBTOOL=		yes

USE_PKGLOCALEDIR=	yes

CONFIGURE_ARGS+=	--prefix=${PREFIX}
CONFIGURE_ARGS+=	--without-python
CONFIGURE_ARGS+=	--without-python3

PKGCONFIG_OVERRIDE+=	src/libcap-ng.pc.in

#RCD_SCRIPTS=		auditd

pre-configure:
	(cd ${WRKSRC}; ./autogen.sh)

#post-install:
#	lndir.sh -l sf ${PREFIX}/bin ${PREFIX}/native/bin ${DESTDIR}

.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
CFLAGS+=	--shared -fPIC
USE_LIBTOOL=		yes
CONFIGURE_ARGS+=	--host=${MACHINE_GNU_PLATFORM}
CONFIGURE_ARGS+=	--with-sysroot=${TOOLS_CROSS_DESTDIR}
CONFIGURE_ENV+=		BUILD_CC=${PREFIX}/gcc6/bin/gcc
CONFIGURE_ENV+=		CC_FOR_BUILD=${PREFIX}/gcc6/bin/gcc
PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.endif

#.include "../../lang/python/tool.mk"
.include "../../mk/bsd.pkg.mk"
