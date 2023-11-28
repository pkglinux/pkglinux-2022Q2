# $NetBSD$

GITHUB_PROJECT=	cronie
DISTNAME=	cronie-1.6.1
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=cronie-crond/}
GITHUB_RELEASE=	${DISTNAME}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/cronie-crond/cronie/
COMMENT=	the standard UNIX daemon crond
LICENSE=	gnu-gpl-v2

CONFLICTS=	anacron-2.[0-9]*

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake pkg-config
USE_PKGLOCALEDIR=	yes

RCD_SCRIPTS=		anacron crond

CONFIGURE_ARGS+=	--with-selinux
.include "../../linux/selinux-libselinux/buildlink3.mk"
.include "../../linux/selinux-libsepol/buildlink3.mk"
.include "../../linux/selinux-libsemanage/buildlink3.mk"
.include "../../linux/audit/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
