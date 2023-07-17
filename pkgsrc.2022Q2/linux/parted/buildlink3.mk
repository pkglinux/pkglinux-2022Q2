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
# XXX	BUILDLINK_DEPMETHOD.parted?=	build

BUILDLINK_TREE+=	parted

.if !defined(PARTED_BUILDLINK3_MK)
PARTED_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.parted+=	parted>=3.4
BUILDLINK_PKGSRCDIR.parted?=	../../linux/parted

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
#.include "../../linux/LVM2/buildlink3.mk"
#.include "../../devel/readline/buildlink3.mk"
.endif	# PARTED_BUILDLINK3_MK

BUILDLINK_TREE+=	-parted
