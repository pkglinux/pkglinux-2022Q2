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
# XXX	BUILDLINK_DEPMETHOD.libpipeline?=	build

BUILDLINK_TREE+=	libpipeline

.if !defined(LIBPIPELINE_BUILDLINK3_MK)
LIBPIPELINE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libpipeline+=	libpipeline>=1.5.2
BUILDLINK_PKGSRCDIR.libpipeline?=	../../linux/libpipeline
.endif	# LIBPIPELINE_BUILDLINK3_MK

BUILDLINK_TREE+=	-libpipeline
