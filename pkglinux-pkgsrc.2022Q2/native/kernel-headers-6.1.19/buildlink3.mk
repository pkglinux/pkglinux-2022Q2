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
# XXX	BUILDLINK_DEPMETHOD.native-linux-API-headers?=	build

BUILDLINK_TREE+=	native-linux-API-headers

.if !defined(NATIVE_LINUX_API_HEADERS_BUILDLINK3_MK)
NATIVE_LINUX_API_HEADERS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.native-linux-API-headers+=	native-linux-API-headers>=5.14.13
BUILDLINK_PKGSRCDIR.native-linux-API-headers?=	../../native/kernel-headers
.endif	# NATIVE_LINUX_API_HEADERS_BUILDLINK3_MK

BUILDLINK_TREE+=	-native-linux-API-headers
