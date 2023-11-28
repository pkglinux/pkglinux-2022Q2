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
# XXX	BUILDLINK_DEPMETHOD.LVM2?=	build

BUILDLINK_TREE+=	LVM2

.if !defined(LVM2_BUILDLINK3_MK)
LVM2_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.LVM2+=	LVM2>=2.03.13
BUILDLINK_PKGSRCDIR.LVM2?=	../../linux/LVM2

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../linux/eudev/buildlink3.mk"
.include "../../linux/libaio/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.endif	# LVM2_BUILDLINK3_MK

BUILDLINK_TREE+=	-LVM2
