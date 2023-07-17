# $NetBSD$

GITHUB_PROJECT=	devilspie
GITHUB_TAG=	0.23
DISTNAME=	devilspie-0.23
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=jean/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/jean/devilspie/
COMMENT=	Detect and match windows to a set of rules
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	intltool pkg-config
GNU_CONFIGURE=		yes
#USE_PKGLOCALEDIR=	yes

.include "../../textproc/intltool/buildlink3.mk"
.include "../../devel/libwnck3/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
