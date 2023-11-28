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
# XXX	BUILDLINK_DEPMETHOD.libblockdev?=	build

BUILDLINK_TREE+=	libblockdev

.if !defined(LIBBLOCKDEV_BUILDLINK3_MK)
LIBBLOCKDEV_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libblockdev+=	libblockdev>=2.26
BUILDLINK_PKGSRCDIR.libblockdev?=	../../linux/libblockdev

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../linux/kmod/buildlink3.mk"
.include "../../native/util-linux/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../devel/libblkid/buildlink3.mk"
.include "../../linux/libbytesize/buildlink3.mk"
.include "../../textproc/libyaml/buildlink3.mk"
.include "../../linux/parted/buildlink3.mk"
.include "../../linux/volume_key/buildlink3.mk"
.include "../../devel/nss/buildlink3.mk"
.include "../../linux/cryptsetup/buildlink3.mk"
.include "../../linux/LVM2/buildlink3.mk"
.include "../../devel/pcre2/buildlink3.mk"
.include "../../math/mpfr/buildlink3.mk"
.include "../../devel/gmp/buildlink3.mk"
.include "../../security/qgpgme/buildlink3.mk"
.include "../../textproc/json-c/buildlink3.mk"
.endif	# LIBBLOCKDEV_BUILDLINK3_MK

BUILDLINK_TREE+=	-libblockdev
