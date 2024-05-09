# $NetBSD$

GITHUB_PROJECT=	selinux
DISTNAME=	semodule-utils-3.5
CATEGORIES=	selinux
MASTER_SITES=	${MASTER_SITE_GITHUB:=SELinuxProject/}
GITHUB_RELEASE=	3.5
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/SELinuxProject/selinux/
COMMENT=	Tools to handle SELinux modules when building a policy
LICENSE=	gnu-gpl-v2

CONFLICTS=	selinux-[0-9]*

USE_TOOLS+=	gmake pkg-config
USE_PKGLOCALEDIR=	yes

post-install:
	lndir.sh -l sf ${PREFIX}/bin ${PREFIX}/native/usr/bin ${DESTDIR}

.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
LDFLAGS+=	-ldl
CFLAGS+=	--shared -fPIC
#.include "../../selinux/libselinux/buildlink3.mk"
.include "../../selinux/libsepol/buildlink3.mk"
#.include "../../selinux/audit/buildlink3.mk"
#.include "../../selinux/libsemanage/buildlink3.mk"
PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.endif

.include "../../mk/bsd.pkg.mk"
