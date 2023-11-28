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
# XXX	BUILDLINK_DEPMETHOD.native-shadow?=	build

BUILDLINK_TREE+=	native-shadow

.if !defined(NATIVE_SHADOW_BUILDLINK3_MK)
NATIVE_SHADOW_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.native-shadow+=	native-shadow>=4.8.1
BUILDLINK_PKGSRCDIR.native-shadow?=	../../native/shadow
.endif	# NATIVE_SHADOW_BUILDLINK3_MK

BUILDLINK_TREE+=	-native-shadow
