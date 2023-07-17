# $NetBSD$

DISTNAME=	groff-1.22.4
CATEGORIES=	linux
MASTER_SITES=	https://ftp.gnu.org/gnu/groff/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://ftp.gnu.org/gnu/groff/

COMMENT=	programs for processing and formatting text
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c c++
USE_TOOLS+=	makeinfo gmake pkg-config intltools msgfmt xgettext perl
#TOOLS_PLATFORM.msgfmt=
#DEPENDS+=	gtexinfo-[0-9]*:../../devel/gtexinfo

USE_PKGLOCALEDIR=	yes

CONFIGURE_ARGS+=	PAGE=A4

#.include "../../devel/gtexinfo/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
