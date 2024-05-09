# $NetBSD$

GITHUB_PROJECT=	selinux
DISTNAME=	secilc-3.5
CATEGORIES=	selinux
MASTER_SITES=	${MASTER_SITE_GITHUB:=SELinuxProject/}
GITHUB_RELEASE=	3.5
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/SELinuxProject/selinux/
COMMENT=	compiles the CIL language into a kernel binary policy file
LICENSE=	gnu-gpl-v2

CONFLICTS=	selinux-[0-9]*

ONLY_FOR_PLATFORM=	Linux-*-*

USE_TOOLS+=		gmake pkg-config
USE_PKGLOCALEDIR=	yes

post-install:
	lndir.sh -l sf ${PREFIX}/bin ${PREFIX}/native/usr/bin ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/share ${PREFIX}/native/usr/share ${DESTDIR}

.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
LDFLAGS+=	-ldl
CFLAGS+=	--shared -fPIC
.include "../../selinux/libselinux/buildlink3.mk"
.include "../../selinux/libsepol/buildlink3.mk"
.include "../../selinux/libsemanage/buildlink3.mk"
.include "../../selinux/semodule-utils/buildlink3.mk"
PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.endif

#.include "../../selinux/libselinux/buildlink3.mk"
#.include "../../selinux/libsepol/buildlink3.mk"
#.include "../../selinux/libsemanage/buildlink3.mk"
#.include "../../selinux/semodule-utils/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
