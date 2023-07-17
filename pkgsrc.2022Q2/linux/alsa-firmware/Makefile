# $NetBSD$

#DISTNAME=	alsa-firmware-1.2.1
DISTNAME=	alsa-firmware-1.2.4
CATEGORIES=	linux
MASTER_SITES=	https://www.alsa-project.org/files/pub/firmware/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.alsa-project.org/files/pub/firmware/
COMMENT=	firmware binaries for each loader program included in alsa-tools package
LICENSE=	gnu-gpl-v2

USE_TOOLS=	gmake pkgconfig autoconf automake m4
USE_LANGUAGES=	c c++
GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes

.include "../../linux/alsa-tools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
