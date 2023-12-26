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
# XXX	BUILDLINK_DEPMETHOD.Linux-PAM?=	build

BUILDLINK_TREE+=	Linux-PAM

.if !defined(LINUX_PAM_BUILDLINK3_MK)
LINUX_PAM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.Linux-PAM+=	Linux-PAM>=1.5.3
BUILDLINK_PKGSRCDIR.Linux-PAM?=	../../native/linux-pam

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
#.include "../../linux/libnsl/buildlink3.mk"
#.include "../../linux/libtirpc/buildlink3.mk"
#.include "../../linux/audit/buildlink3.mk"
#.include "../../databases/db4/buildlink3.mk"
.endif	# LINUX_PAM_BUILDLINK3_MK

BUILDLINK_TREE+=	-Linux-PAM
