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
# XXX	BUILDLINK_DEPMETHOD.insserv?=	build

BUILDLINK_TREE+=	insserv

.if !defined(INSSERV_BUILDLINK3_MK)
INSSERV_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.insserv+=	insserv>=1.24.0
BUILDLINK_PKGSRCDIR.insserv?=	../../native/insserv
.endif	# INSSERV_BUILDLINK3_MK

BUILDLINK_TREE+=	-insserv
