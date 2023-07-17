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
# XXX	BUILDLINK_DEPMETHOD.libcap-ng?=	build

BUILDLINK_TREE+=	libcap-ng

.if !defined(LIBCAP_NG_BUILDLINK3_MK)
LIBCAP_NG_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libcap-ng+=	libcap-ng>=0.8.3
BUILDLINK_PKGSRCDIR.libcap-ng?=	../../linux/libcap-ng
.endif	# LIBCAP_NG_BUILDLINK3_MK

BUILDLINK_TREE+=	-libcap-ng
