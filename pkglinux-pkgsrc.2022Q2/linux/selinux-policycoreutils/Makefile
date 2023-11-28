# $NetBSD$

GITHUB_PROJECT=	selinux
DISTNAME=	policycoreutils-3.5
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=SELinuxProject/}
GITHUB_RELEASE=	3.5
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/SELinuxProject/selinux/
COMMENT=	SELinux core utils such as newrole, setfiles, etc.
LICENSE=	gnu-gpl-v2

CONFLICTS=	selinux-[0-9]*

USE_TOOLS+=	gmake pkg-config
USE_PKGLOCALEDIR=	yes

post-install:
	lndir.sh -l sf ${PREFIX}/bin ${PREFIX}/native/usr/bin ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/etc ${PREFIX}/native/etc ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/libexec ${PREFIX}/native/usr/libexec ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/sbin ${PREFIX}/native/usr/sbin ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/share ${PREFIX}/native/usr/share ${DESTDIR}

USE_PKGLOCALEDIR=	yes

MAKE_ENV+=	PREFIX=${PREFIX}
MAKE_ENV+=	SBINDIR=${PREFIX}/sbin
MAKE_ENV+=	ETCDIR=${PREFIX}/etc
MAKE_ENV+=	PAMH=n

#.include "../../mk/pam.buildlink3.mk"
#.include "../../security/openpam/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
