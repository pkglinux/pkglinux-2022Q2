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
# XXX	BUILDLINK_DEPMETHOD.lz4?=	build

BUILDLINK_TREE+=	lz4

.if !defined(LZ4_BUILDLINK3_MK)
LZ4_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.lz4+=	lz4>=1.9.3nb1
BUILDLINK_PKGSRCDIR.lz4?=	../../archivers/lz4
.endif	# LZ4_BUILDLINK3_MK

BUILDLINK_TREE+=	-lz4
