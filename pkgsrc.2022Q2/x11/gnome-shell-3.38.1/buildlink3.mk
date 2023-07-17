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
# XXX	BUILDLINK_DEPMETHOD.gnome-shell?=	build

BUILDLINK_TREE+=	gnome-shell

.if !defined(GNOME_SHELL_BUILDLINK3_MK)
GNOME_SHELL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gnome-shell+=	gnome-shell>=3.38.1nb3
BUILDLINK_PKGSRCDIR.gnome-shell?=	../../x11/gnome-shell

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
#.include "../../archivers/gnome-autoar/buildlink3.mk"
#.include "../../audio/pulseaudio/buildlink3.mk"
#.include "../../devel/at-spi2-atk/buildlink3.mk"
#.include "../../devel/gobject-introspection/buildlink3.mk"
#.include "../../graphics/adwaita-icon-theme/buildlink3.mk"
#.include "../../graphics/librsvg/buildlink3.mk"
#.include "../../inputmethod/ibus/buildlink3.mk"
#.include "../../lang/gjs/buildlink3.mk"
#.include "../../mail/evolution-data-server/buildlink3.mk"
#.include "../../textproc/json-glib/buildlink3.mk"
#.include "../../security/gcr/buildlink3.mk"
#.include "../../security/libsecret/buildlink3.mk"
#.include "../../security/polkit/buildlink3.mk"
#.include "../../sysutils/gsettings-desktop-schemas/buildlink3.mk"
#.include "../../wm/mutter/buildlink3.mk"
#.include "../../graphics/graphene/buildlink3.mk"
#.include "../../x11/gnome-desktop3/buildlink3.mk"
#.include "../../sysutils/gsettings-desktop-schemas/buildlink3.mk"
#.include "../../x11/xkeyboard-config/buildlink3.mk"
#.include "../../textproc/iso-codes/buildlink3.mk"
#.include "../../x11/startup-notification/buildlink3.mk"
#.include "../../linux/libseccomp/buildlink3.mk"
#.include "../../linux/NetworkManager/buildlink3.mk"
.endif	# GNOME_SHELL_BUILDLINK3_MK

BUILDLINK_TREE+=	-gnome-shell
