# $NetBSD$

#DISTNAME=	gvfs-1.42.2
DISTNAME=	gvfs-1.48.1
CATEGORIES=	sysutils
MASTER_SITES=	http://ftp.gnome.org/pub/gnome/sources/gvfs/1.48/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://ftp.gnome.org/pub/gnome/sources/gvfs/1.48/
COMMENT=	Userspace virtual filesystem
LICENSE=	gnu-lgpl-v2

USE_TOOLS+=gdbus-codegen

USE_PKGLOCALEDIR=	yes

MESON_ARGS+=      -Dfuse=true
MESON_ARGS+=      -Dgphoto2=true
MESON_ARGS+=      -Dafc=false
MESON_ARGS+=      -Dbluray=false
MESON_ARGS+=      -Dnfs=false
MESON_ARGS+=      -Dmtp=true
MESON_ARGS+=      -Dsmb=true
MESON_ARGS+=      -Ddnssd=false
MESON_ARGS+=      -Dcdda=true
MESON_ARGS+=      -Dudisks2=true
MESON_ARGS+=      -Dgoa=false
MESON_ARGS+=      -Dgoogle=false
MESON_ARGS+=      -Dtmpfilesdir=no
MESON_ARGS+=      -Dsystemduserunitdir=no
MESON_ARGS+=      -Dlogind=false
#MESON_ARGS+=      -Dkeyring=false
MESON_ARGS+=      -Dnfs=true

post-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/lib/
	cd ${DESTDIR}${PREFIX}/lib/ && ${LN} -sfv gvfs/*.so .
	cd ${DESTDIR}${PREFIX}/lib/ && ${LN} -sfv gio/modules/*.so .

.include "../../devel/meson/build.mk"

.include "../../sysutils/gsettings-desktop-schemas/buildlink3.mk"
.include "../../security/gcr/buildlink3.mk"
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
.include "../../sysutils/attr/buildlink3.mk"
.include "../../linux/libnfs/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
