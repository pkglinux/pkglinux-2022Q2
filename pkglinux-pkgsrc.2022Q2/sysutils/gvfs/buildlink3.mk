# $NetBSD$
# XXX
# XXX This file was created automatically using createbuildlink-3.18.
# XXX After this file has been verified as correct, the comment lines
# XXX beginning with "XXX" should be removed.  Please do not commit
# XXX unverified buildlink3.mk files.
# XXX
# XXX Packages that only install static libraries or headers should
# XXX include the following line:
# XXX
# XXX	BUILDLINK_DEPMETHOD.gvfs?=	build

BUILDLINK_TREE+=	gvfs

.if !defined(GVFS_BUILDLINK3_MK)
GVFS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gvfs+=	gvfs>=1.6.7nb59
BUILDLINK_PKGSRCDIR.gvfs?=	../../sysutils/gvfs

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../archivers/libarchive/buildlink3.mk"
.include "../../net/libsoup/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../devel/GConf/buildlink3.mk"
.include "../../security/libgnome-keyring/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../security/libsecret/buildlink3.mk"
.include "../../sysutils/libcap/buildlink3.mk"
.include "../../security/polkit/buildlink3.mk"
.include "../../linux/libgudev/buildlink3.mk"
#.include "../../linux/fuse3/buildlink3.mk"
.include "../../linux/udisks2/buildlink3.mk"
.include "../../devel/libusb1/buildlink3.mk"
.include "../../archivers/libarchive/buildlink3.mk"
.include "../../net/samba4/buildlink3.mk"
.include "../../misc/libcdio-paranoia/buildlink3.mk"
.include "../../devel/libmtp/buildlink3.mk"
.include "../../graphics/gphoto2/buildlink3.mk"
.include "../../devel/libgphoto2/buildlink3.mk"
.endif	# GVFS_BUILDLINK3_MK

BUILDLINK_TREE+=	-gvfs
