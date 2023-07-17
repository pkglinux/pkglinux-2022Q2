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
# XXX	BUILDLINK_DEPMETHOD.libndp?=	build

BUILDLINK_TREE+=	libndp

.if !defined(LIBNDP_BUILDLINK3_MK)
LIBNDP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libndp+=	libndp>=1.7
BUILDLINK_PKGSRCDIR.libndp?=	../../linux/libndp
.endif	# LIBNDP_BUILDLINK3_MK

BUILDLINK_TREE+=	-libndp
