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
# XXX	BUILDLINK_DEPMETHOD.semodule-utils?=	build

BUILDLINK_TREE+=	semodule-utils

.if !defined(SEMODULE_UTILS_BUILDLINK3_MK)
SEMODULE_UTILS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.semodule-utils+=	semodule-utils>=3.5
BUILDLINK_PKGSRCDIR.semodule-utils?=	../../selinux/semodule-utils

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../selinux/libsepol/buildlink3.mk"
.endif	# SEMODULE_UTILS_BUILDLINK3_MK

BUILDLINK_TREE+=	-semodule-utils
