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
# XXX	BUILDLINK_DEPMETHOD.xz?=	build

BUILDLINK_TREE+=	xz

.if !defined(XZ_BUILDLINK3_MK)
XZ_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.xz+=	xz>=5.2.5nb1
BUILDLINK_PKGSRCDIR.xz?=	../../archivers/xz
.endif	# XZ_BUILDLINK3_MK

BUILDLINK_TREE+=	-xz
