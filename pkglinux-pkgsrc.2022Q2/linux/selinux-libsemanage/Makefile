# $NetBSD$

GITHUB_PROJECT=	selinux
DISTNAME=	libsemanage-3.5
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=SELinuxProject/}
GITHUB_RELEASE=	3.5
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/SELinuxProject/selinux/
COMMENT=	Library for policy management.
LICENSE=	gnu-gpl-v2

CONFLICTS=	selinux-[0-9]*

USE_TOOLS+=	gmake pkg-config
USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE+=	src/libsemanage.pc.in

MAKE_ENV+=		PREFIX=${PREFIX}
MAKE_ENV+=		SYSCONFDIR=${PREFIX}/etc

post-extract:
	${CP} ${FILESDIR}/semanage.conf ${WRKSRC}/src/

post-install:
	lndir.sh -l sf ${PREFIX}/etc ${PREFIX}/native/etc ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/include ${PREFIX}/native/usr/include ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/lib ${PREFIX}/native/usr/lib ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/libexec ${PREFIX}/native/usr/libexec ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/share ${PREFIX}/native/usr/share ${DESTDIR}

.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
#BUILDLINK_DEPMETHOD.bzip2?=	build
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

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../linux/audit/buildlink3.mk"
.include "../../linux/selinux-libselinux/buildlink3.mk"
.include "../../linux/selinux-libsepol/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
