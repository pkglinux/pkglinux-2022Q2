# $NetBSD$

DISTNAME=	reiserfsprogs-3.6.27
CATEGORIES=	linux
MASTER_SITES=	https://mirrors.edge.kernel.org/pub/linux/kernel/people/jeffm/reiserfsprogs/v3.6.27/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://mirrors.edge.kernel.org/pub/linux/kernel/people/jeffm/reiserfsprogs/v3.6.27/
COMMENT=	FS based on balanced tree algorithms described at www.namesys.com
LICENSE=	gnu-gpl-v2

USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake pkg-config autoconf automake m4 intltools msgfmt xgettext
GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes

#CFLAGS+=	-D_GNU_SOURCE -D_BSD_SOURCE
CFLAGS+=	-D_GNU_SOURCE

PKGCONFIG_OVERRIDE+=	reiserfscore/reiserfscore.pc.in

.include "../../mk/bsd.pkg.mk"
