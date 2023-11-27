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
# XXX	BUILDLINK_DEPMETHOD.native-glibc?=	build

BUILDLINK_TREE+=	native-glibc

.if !defined(NATIVE_GLIBC_BUILDLINK3_MK)
NATIVE_GLIBC_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.native-glibc+=	native-glibc>=2.31
BUILDLINK_PKGSRCDIR.native-glibc?=	../../native/glibc
.endif	# NATIVE_GLIBC_BUILDLINK3_MK

BUILDLINK_TREE+=	-native-glibc
