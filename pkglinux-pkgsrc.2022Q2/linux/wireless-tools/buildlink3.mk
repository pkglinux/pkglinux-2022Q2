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
# XXX	BUILDLINK_DEPMETHOD.wireless-tools?=	build

BUILDLINK_TREE+=	wireless-tools

.if !defined(WIRELESS_TOOLS_BUILDLINK3_MK)
WIRELESS_TOOLS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.wireless-tools+=	wireless-tools>=29
BUILDLINK_PKGSRCDIR.wireless-tools?=	../../linux/wireless-tools
.endif	# WIRELESS_TOOLS_BUILDLINK3_MK

BUILDLINK_TREE+=	-wireless-tools
