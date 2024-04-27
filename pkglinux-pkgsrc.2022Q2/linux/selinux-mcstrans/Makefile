# $NetBSD$

GITHUB_PROJECT=	selinux
DISTNAME=	mcstrans-3.5
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=SELinuxProject/}
GITHUB_RELEASE=	3.5
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/SELinuxProject/selinux/
COMMENT=	Daemon which is used by libselinux to translate MCS labels
LICENSE=	gnu-gpl-v2

CONFLICTS=	selinux-[0-9]*

ONLY_FOR_PLATFORM=	Linux-*-*

USE_TOOLS+=	gmake pkg-config
USE_PKGLOCALEDIR=	yes

MAKE_ENV+=		SBINDIR=${PREFIX}/sbin	
MAKE_ENV+=		INITDIR=${PREFIX}/etc/rc.d/init.d

RCD_SCRIPTS=		mcstransd

post-install:
	lndir.sh -l sf ${PREFIX}/sbin ${PREFIX}/native/usr/sbin ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/etc ${PREFIX}/native/etc ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/lib ${PREFIX}/native/usr/lib ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/share ${PREFIX}/native/usr/share ${DESTDIR}

.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
LDFLAGS+=	-ldl
CFLAGS+=	--shared -fPIC
.include "../../sysutils/libcap/buildlink3.mk"
PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.endif

.include "../../linux/selinux-libselinux/buildlink3.mk"
#.include "../../linux/selinux-libsepol/buildlink3.mk"
#.include "../../linux/selinux-libsemanage/buildlink3.mk"
#.include "../../linux/semodule-utils/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
