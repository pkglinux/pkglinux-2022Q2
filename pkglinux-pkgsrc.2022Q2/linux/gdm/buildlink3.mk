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
# XXX	BUILDLINK_DEPMETHOD.gdm?=	build

BUILDLINK_TREE+=	gdm

.if !defined(GDM_BUILDLINK3_MK)
GDM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gdm+=	gdm>=40.0nb3
BUILDLINK_PKGSRCDIR.gdm?=	../../linux/gdm

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../sysutils/gsettings-desktop-schemas/buildlink3.mk"
.include "../../security/openpam/buildlink3.mk"
.include "../../devel/dconf/buildlink3.mk"
.include "../../audio/libcanberra/buildlink3.mk"
.include "../../textproc/iso-codes/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../sysutils/accountsservice/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../security/tcp_wrappers/buildlink3.mk"
.endif	# GDM_BUILDLINK3_MK

BUILDLINK_TREE+=	-gdm
