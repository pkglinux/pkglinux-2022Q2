# $NetBSD$

GITHUB_PROJECT=	selinux
DISTNAME=	checkpolicy-3.5
CATEGORIES=	selinux
MASTER_SITES=	${MASTER_SITE_GITHUB:=SELinuxProject/}
GITHUB_RELEASE=	3.5
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/SELinuxProject/selinux/
COMMENT=	Tools to build SELinux policy
LICENSE=	gnu-gpl-v2

CONFLICTS=	selinux-[0-9]*

USE_TOOLS+=	gmake pkg-config
USE_PKGLOCALEDIR=	yes

post-install:
	lndir.sh -l sf ${PREFIX}/bin ${PREFIX}/native/usr/bin ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/share/man ${PREFIX}/man ${DESTDIR}

.include "../../mk/bsd.pkg.mk"
