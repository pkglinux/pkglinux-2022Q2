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
# XXX	BUILDLINK_DEPMETHOD.volume_key?=	build

BUILDLINK_TREE+=	volume_key

.if !defined(VOLUME_KEY_BUILDLINK3_MK)
VOLUME_KEY_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.volume_key+=	volume_key>=0.3.12
BUILDLINK_PKGSRCDIR.volume_key?=	../../linux/volume_key

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../devel/glib2/buildlink3.mk"
.include "../../linux/cryptsetup/buildlink3.mk"
.include "../../security/gpgme/buildlink3.mk"
.include "../../devel/nss/buildlink3.mk"
.include "../../devel/libblkid/buildlink3.mk"
.include "../../textproc/json-c/buildlink3.mk"
.include "../../linux/LVM2/buildlink3.mk"
.endif	# VOLUME_KEY_BUILDLINK3_MK

BUILDLINK_TREE+=	-volume_key
