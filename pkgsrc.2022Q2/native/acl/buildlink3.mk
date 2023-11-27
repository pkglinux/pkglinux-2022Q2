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
# XXX	BUILDLINK_DEPMETHOD.native-acl?=	build

BUILDLINK_TREE+=	native-acl

.if !defined(NATIVE_ACL_BUILDLINK3_MK)
NATIVE_ACL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.native-acl+=	native-acl>=2.2.53
BUILDLINK_PKGSRCDIR.native-acl?=	../../native/acl
.endif	# NATIVE_ACL_BUILDLINK3_MK

BUILDLINK_TREE+=	-native-acl
