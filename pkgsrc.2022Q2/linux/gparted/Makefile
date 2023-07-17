# $NetBSD$

DISTNAME=	gparted-1.5.0
CATEGORIES=	linux
MASTER_SITES=	https://jaist.dl.sourceforge.net/project/gparted/gparted/gparted-1.5.0/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://jaist.dl.sourceforge.net/project/gparted/gparted/gparted-1.5.0/
COMMENT=	GNOME Partition Editor for managing disk partitions
LICENSE=	gnu-gpl-v2

USE_TOOLS+=		pkg-config gmake itstool
USE_LANGUAGES+=		c c++
GNU_CONFIGURE=		yes
#USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes

.include "../../devel/libuuid/buildlink3.mk"
#.include "../../devel/libuuid/builtin.mk"
.include "../../linux/parted/buildlink3.mk"
.include "../../x11/gtkmm3/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
