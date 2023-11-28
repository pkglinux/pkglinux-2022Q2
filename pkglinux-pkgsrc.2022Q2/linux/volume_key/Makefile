# $NetBSD$

GITHUB_PROJECT=	volume_key
GITHUB_TAG=	volume_key-0.3.12
DISTNAME=	volume_key-0.3.12
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=felixonmars/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/felixonmars/volume_key/
COMMENT=	manipulating storage volume encryption keys
LICENSE=	gnu-gpl-v2

WRKSRC=			${WRKDIR}/volume_key-volume_key-0.3.12

GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config gmake m4 autoreconf autoconf automake
USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++

CONFIGURE_ARGS+=	--without-python
CONFIGURE_ARGS+=	--without-python3

pre-configure:
	cd ${WRKSRC} && /${PREFIX}/bin/autoreconf -fiv 

.include "../../devel/glib2/buildlink3.mk"
.include "../../linux/cryptsetup/buildlink3.mk"
.include "../../security/gpgme/buildlink3.mk"
.include "../../devel/nss/buildlink3.mk"
.include "../../devel/libblkid/buildlink3.mk"
.include "../../textproc/json-c/buildlink3.mk"
.include "../../linux/LVM2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
