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
# XXX	BUILDLINK_DEPMETHOD.xf86-input-libinput?=	build

BUILDLINK_TREE+=	xf86-input-libinput

.if !defined(XF86_INPUT_LIBINPUT_BUILDLINK3_MK)
XF86_INPUT_LIBINPUT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.xf86-input-libinput+=	xf86-input-libinput>=1.0.1
BUILDLINK_PKGSRCDIR.xf86-input-libinput?=	../../linux/xf86-input-libinput

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../linux/libinput/buildlink3.mk"
.include "../../x11/modular-xorg-server/buildlink3.mk"
.endif	# XF86_INPUT_LIBINPUT_BUILDLINK3_MK

BUILDLINK_TREE+=	-xf86-input-libinput
