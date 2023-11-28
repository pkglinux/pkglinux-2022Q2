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
# XXX	BUILDLINK_DEPMETHOD.NetworkManager?=	build

BUILDLINK_TREE+=	NetworkManager

.if !defined(NETWORKMANAGER_BUILDLINK3_MK)
NETWORKMANAGER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.NetworkManager+=	NetworkManager>=1.32.10
BUILDLINK_PKGSRCDIR.NetworkManager?=	../../linux/NetworkManager

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../devel/libuuid/buildlink3.mk"
.include "../../linux/eudev/buildlink3.mk"
.include "../../linux/libndp/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../textproc/jansson/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../devel/nss/buildlink3.mk"
.include "../../security/polkit/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../net/wpa_supplicant/buildlink3.mk"
.endif	# NETWORKMANAGER_BUILDLINK3_MK

BUILDLINK_TREE+=	-NetworkManager
