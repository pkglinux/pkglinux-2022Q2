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
# XXX	BUILDLINK_DEPMETHOD.libaio?=	build

BUILDLINK_TREE+=	libaio

.if !defined(LIBAIO_BUILDLINK3_MK)
LIBAIO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libaio+=	libaio>=0.3.112
BUILDLINK_PKGSRCDIR.libaio?=	../../linux/libaio
.endif	# LIBAIO_BUILDLINK3_MK

BUILDLINK_TREE+=	-libaio
