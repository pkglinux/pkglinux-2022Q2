# $NetBSD: Makefile,v 1.122 2022/04/21 16:49:27 nia Exp $
#

DISTNAME=	gvfs-1.6.7
PKGREVISION=	59
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gvfs/1.6/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.gnome.org/
COMMENT=	Userspace virtual filesystem
LICENSE=	gnu-lgpl-v2

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_TOOLS+=		intltool gmake pkg-config msgfmt
CONFIGURE_ARGS+=	--enable-http
CONFIGURE_ARGS+=	--disable-bash-completion

BUILDLINK_TRANSFORM+=	rm:-DG_DISABLE_DEPRECATED

.include "../../mk/compiler.mk"

.if !empty(PKGSRC_COMPILER:Mclang) || !empty(CC_VERSION:Mgcc-[6-9]*) || !empty(CC_VERSION:Mgcc-1[0-9].*)
CFLAGS.SunOS+=		-D_XOPEN_SOURCE=600 -D__EXTENSIONS__
.else
CFLAGS.SunOS+=		-D_XOPEN_SOURCE=500 -D__EXTENSIONS__
.endif

CONFIGURE_ARGS+=      --enable-gudev
CONFIGURE_ARGS+=      --enable-fuse
CONFIGURE_ARGS+=      --enable-gphoto2
CONFIGURE_ARGS+=      --disable-afc
CONFIGURE_ARGS+=      --disable-bluray
CONFIGURE_ARGS+=      --disable-nfs
CONFIGURE_ARGS+=      --enable-mtp
CONFIGURE_ARGS+=      --enable-smb
CONFIGURE_ARGS+=      --disable-dnssd
CONFIGURE_ARGS+=      --enable-cdda
CONFIGURE_ARGS+=      --enable-udisks2
CONFIGURE_ARGS+=      --disable-goa
CONFIGURE_ARGS+=      --disable-google
#CONFIGURE_ARGS+=      --tmpfilesdir=no
#CONFIGURE_ARGS+=      --systemduserunitdir=no
CONFIGURE_ARGS+=      --disable-logind
#CONFIGURE_ARGS+=      --disable-keyring

.include "options.mk"
BUILDLINK_API_DEPENDS.glib2+=	glib2>=2.23.4
.include "../../devel/glib2/modules.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../archivers/libarchive/buildlink3.mk"
BUILDLINK_API_DEPENDS.libsoup+=	libsoup>=2.26.0
.include "../../net/libsoup/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../devel/GConf/buildlink3.mk"
.include "../../security/libgnome-keyring/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"

.include "../../security/libsecret/buildlink3.mk"
.include "../../sysutils/libcap/buildlink3.mk"
.include "../../security/polkit/buildlink3.mk"
.include "../../linux/libgudev/buildlink3.mk"
.include "../../linux/fuse3/buildlink3.mk"
.include "../../linux/udisks2/buildlink3.mk"
.include "../../devel/libusb1/buildlink3.mk"
.include "../../archivers/libarchive/buildlink3.mk"

.include "../../net/samba4/buildlink3.mk"
.include "../../misc/libcdio-paranoia/buildlink3.mk"
.include "../../mk/fuse.buildlink3.mk"

.include "../../devel/libmtp/buildlink3.mk"
.include "../../graphics/gphoto2/buildlink3.mk"
.include "../../devel/libgphoto2/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
