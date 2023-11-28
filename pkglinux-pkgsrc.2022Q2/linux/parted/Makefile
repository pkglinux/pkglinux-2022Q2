# $NetBSD$

#DISTNAME=	parted-3.4
#DISTNAME=	parted-3.5
DISTNAME=	parted-3.6
CATEGORIES=	linux
MASTER_SITES=	https://ftp.gnu.org/gnu/parted/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://ftp.gnu.org/gnu/parted/
COMMENT=	program for manipulating partition tables
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config gmake
USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE+=	libparted-fs-resize.pc.in
PKGCONFIG_OVERRIDE+=	libparted.pc.in

.include "../../linux/LVM2/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
