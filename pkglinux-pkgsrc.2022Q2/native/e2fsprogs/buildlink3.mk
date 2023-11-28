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
# XXX	BUILDLINK_DEPMETHOD.e2fsprogs?=	build

BUILDLINK_TREE+=	e2fsprogs

.if !defined(E2FSPROGS_BUILDLINK3_MK)
E2FSPROGS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.e2fsprogs+=	e2fsprogs>=1.45.5
BUILDLINK_PKGSRCDIR.e2fsprogs?=	../../native/e2fsprogs

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
#.include "../../devel/gettext-lib/buildlink3.mk"
#.include "../../devel/libblkid/buildlink3.mk"
#.include "../../devel/libuuid/buildlink3.mk"
.endif	# E2FSPROGS_BUILDLINK3_MK

BUILDLINK_TREE+=	-e2fsprogs
