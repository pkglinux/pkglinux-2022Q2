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
# XXX	BUILDLINK_DEPMETHOD.procps-ng?=	build

BUILDLINK_TREE+=	procps-ng

.if !defined(PROCPS_NG_BUILDLINK3_MK)
PROCPS_NG_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.procps-ng+=	procps-ng>=3.3.15
BUILDLINK_PKGSRCDIR.procps-ng?=	../../linux/procps-ng

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../devel/ncurses/buildlink3.mk"
.include "../../devel/ncursesw/buildlink3.mk"
.endif	# PROCPS_NG_BUILDLINK3_MK

BUILDLINK_TREE+=	-procps-ng
