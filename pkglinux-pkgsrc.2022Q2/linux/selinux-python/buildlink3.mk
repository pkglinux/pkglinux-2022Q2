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
# XXX	BUILDLINK_DEPMETHOD.selinux-python?=	build

BUILDLINK_TREE+=	selinux-python

.if !defined(SELINUX_PYTHON_BUILDLINK3_MK)
SELINUX_PYTHON_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.selinux-python+=	selinux-python>=3.5
BUILDLINK_PKGSRCDIR.selinux-python?=	../../linux/selinux-python
.endif	# SELINUX_PYTHON_BUILDLINK3_MK

BUILDLINK_TREE+=	-selinux-python
