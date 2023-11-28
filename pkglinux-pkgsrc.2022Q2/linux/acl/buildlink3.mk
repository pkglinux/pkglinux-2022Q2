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
# XXX	BUILDLINK_DEPMETHOD.acl?=	build

BUILDLINK_TREE+=	acl

.if !defined(ACL_BUILDLINK3_MK)
ACL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.acl+=	acl>=2.2.53
BUILDLINK_PKGSRCDIR.acl?=	../../linux/acl
.endif	# ACL_BUILDLINK3_MK

BUILDLINK_TREE+=	-acl
