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
# XXX	BUILDLINK_DEPMETHOD.fcitx5-gtk?=	build

BUILDLINK_TREE+=	fcitx5-gtk

.if !defined(FCITX5_GTK_BUILDLINK3_MK)
FCITX5_GTK_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.fcitx5-gtk+=	fcitx5-gtk>=5.0.4nb1
BUILDLINK_PKGSRCDIR.fcitx5-gtk?=	../../inputmethod/fcitx5-gtk

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../textproc/fmtlib/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../x11/gtk4/buildlink3.mk"
.endif	# FCITX5_GTK_BUILDLINK3_MK

BUILDLINK_TREE+=	-fcitx5-gtk
