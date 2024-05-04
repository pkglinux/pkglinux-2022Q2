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
# XXX	BUILDLINK_DEPMETHOD.gperf?=	build

BUILDLINK_TREE+=	gperf

.if !defined(GPERF_BUILDLINK3_MK)
GPERF_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gperf+=	gperf>=3.1
BUILDLINK_PKGSRCDIR.gperf?=	../../devel/gperf
.endif	# GPERF_BUILDLINK3_MK

BUILDLINK_TREE+=	-gperf
