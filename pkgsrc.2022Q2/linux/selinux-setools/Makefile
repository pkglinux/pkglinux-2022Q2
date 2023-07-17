# $NetBSD$

DISTNAME=	setools-4.4.1
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=SELinuxProject/setools/releases/download/4.4.1/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/SELinuxProject/setools/releases/download/4.4.1/ # TODO: check
COMMENT=	tools to facilitate SELinux policy analysis.
LICENSE=	gnu-gpl-v2

CONFLICTS=	selinux-[0-9]*

ONLY_FOR_PLATFORM=	Linux-*-*

WRKSRC=		${WRKDIR}/setools

USE_TOOLS+=	gmake pkg-config
USE_PKGLOCALEDIR=	yes

#MAKE_ENV+=		SHAREDIR=${PREFIX}/var/lib/sepolgen

#post-install:
#	lndir.sh -l sf ${PREFIX}/bin ${PREFIX}/native/usr/bin ${DESTDIR}
#	lndir.sh -l sf ${PREFIX}/sbin ${PREFIX}/native/usr/sbin ${DESTDIR}

#.include "../../linux/audit/buildlink3.mk"
.include "../../linux/selinux-libselinux/buildlink3.mk"
.include "../../linux/selinux-libsepol/buildlink3.mk"
#.include "../../linux/selinux-libsemanage/buildlink3.mk"
#.include "../../linux/semodule-utils/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
