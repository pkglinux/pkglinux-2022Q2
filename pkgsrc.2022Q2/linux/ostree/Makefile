# $NetBSD$

DISTNAME=	libostree-2022.5
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=ostreedev/ostree/releases/download/v2022.5/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/ostreedev/ostree/releases/download/v2022.5/ # TODO: check
COMMENT=	"git-like" model for committing and downloading bootable filesystem trees
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_LIBTOOLS+=	yes
USE_TOOLS+=	gmake flex pkg-config

CONFIGURE_ENV+=	OT_DEP_E2P_CFLAGS="-I/usr/e2p -I/usr"
CONFIGURE_ENV+=	OT_DEP_E2P_LIBS="-L/usr/lib -le2p"

PKGCONFIG_OVERRIDE+=	src/libostree/ostree-1.pc.in

CONFIGURE_ARGS+=	--with-soup
CONFIGURE_ARGS+=	--with-curl
CONFIGURE_ARGS+=	--without-libsystemd
CONFIGURE_ARGS+=	--disable-installed-tests
CONFIGURE_ARGS+=	--disable-always-build-tests
CONFIGURE_ARGS+=	--disable-glibtest

#pre-configure:
#	cd ${WRKSRC} &&autoreconf -fiv

.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../archivers/xz/buildlink3.mk"
.include "../../filesystems/fuse/buildlink3.mk"
.include "../../security/gpgme/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../net/libsoup/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
