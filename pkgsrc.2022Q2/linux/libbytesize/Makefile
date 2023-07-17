# $NetBSD$

GITHUB_PROJECT=	libbytesize
DISTNAME=	libbytesize-2.6
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=storaged-project/}
GITHUB_RELEASE=	2.6

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/storaged-project/libbytesize/
COMMENT=	common operations with sizes in bytes
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config
USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE+=	src/bytesize.pc.in

.include "../../devel/pcre2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
