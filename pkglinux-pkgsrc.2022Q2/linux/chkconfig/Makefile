# $NetBSD$

GITHUB_PROJECT=	chkconfig
GITHUB_TAG=	refs/tags/1.15
DISTNAME=	1.15
PKGNAME=	${GITHUB_PROJECT}-${DISTNAME}
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=fedora-sysv/}
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/fedora-sysv/chkconfig/
COMMENT=	Specify in which runlevel to start a selected service
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	gmake pkgconfig
#TOOLS_PLATFORM.msgfmt=
#TOOLS_PLATFORM.gmake=

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

WRKSRC=			${WRKDIR}/chkconfig-1.15
USE_PKGLOCALEDIR=	yes

post-extract:
	sed "s:/pkg/:/${PREFIX}/:g" ${FILESDIR}/leveldb.h > ${WRKSRC}/leveldb.h

post-install:
	lndir.sh -l sf ${PREFIX}/sbin ${PREFIX}/native/sbin ${DESTDIR}
#	lndir.sh ${DESTDIR}${PREFIX}/sbin ${DESTDIR}${PREFIX}/native/sbin

.include "../../devel/popt/buildlink3.mk"
#.include "../../linux/libselinux/buildlink3.mk"
#.include "../../linux/libsepol/buildlink3.mk"
#.include "../../linux/newt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
