# $NetBSD$

DISTNAME=	network-manager-applet-1.16.0
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/network-manager-applet/1.16/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://download.gnome.org/sources/network-manager-applet/1.16/ # TODO: check
COMMENT=	applet used to configure network connections through GUI
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_TOOLS+=		pkgconf gmake
USE_PKGLOCALEDIR=	yes

# Disables AppIndicator support because it requires libindicator
#MESON_ARGS+=		-Dappindicator=no
# Disable WWAN support if you do not have ModemManager installed. 
#MESON_ARGS+=		-Dwwan=false	

.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.else
MESON_ARGS+=		-Dselinux=true
.include "../../selinux/libselinux/buildlink3.mk"
.include "../../selinux/libsepol/buildlink3.mk"
.include "../../selinux/libsemanage/buildlink3.mk"
.include "../../linux/audit/buildlink3.mk"
.include "../../linux/semodule-utils/buildlink3.mk"
.endif

.include "../../devel/meson/build.mk"

.include "../../linux/NetworkManager/buildlink3.mk"
.include "../../linux/libnma/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../security/libsecret/buildlink3.mk"
.include "../../devel/libindicator/buildlink3.mk"
.include "../../devel/libappindicator/buildlink3.mk"
.include "../../devel/libdbusmenu-gtk3/buildlink3.mk"
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../linux/ModemManager/buildlink3.mk"
.include "../../linux/eudev/buildlink3.mk"
.include "../../linux/libgudev/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"

