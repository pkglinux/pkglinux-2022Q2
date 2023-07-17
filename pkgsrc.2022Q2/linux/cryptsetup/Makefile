# $NetBSD$

DISTNAME=	cryptsetup-2.3.6
CATEGORIES=	linux
MASTER_SITES=	https://www.kernel.org/pub/linux/utils/cryptsetup/v2.3/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.kernel.org/pub/linux/utils/cryptsetup/v2.3/
COMMENT=	setup cryptographic volumes for dm-crypt (including LUKS extension)
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config
USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE+=	lib/libcryptsetup.pc.in

.include "../../textproc/json-c/buildlink3.mk"
.include "../../linux/LVM2/buildlink3.mk"
.include "../../devel/popt/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
