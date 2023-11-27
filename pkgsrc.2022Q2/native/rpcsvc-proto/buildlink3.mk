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
# XXX	BUILDLINK_DEPMETHOD.rpcsvc-proto?=	build

BUILDLINK_TREE+=	rpcsvc-proto

.if !defined(RPCSVC_PROTO_BUILDLINK3_MK)
RPCSVC_PROTO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.rpcsvc-proto+=	rpcsvc-proto>=1.4
BUILDLINK_PKGSRCDIR.rpcsvc-proto?=	../../native/rpcsvc-proto
.endif	# RPCSVC_PROTO_BUILDLINK3_MK

BUILDLINK_TREE+=	-rpcsvc-proto
