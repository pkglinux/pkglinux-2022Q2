# $NetBSD: Makefile,v 1.4 2021/02/07 06:30:40 ryoon Exp $

DISTNAME=	gnome-shell-3.38.1
PKGREVISION=	3
CATEGORIES=	x11 gnome
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/${PKGBASE}/${PKGVERSION_NOREV:R}/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	dan@alt.md
HOMEPAGE=	https://wiki.gnome.org/Projects/GnomeShell
COMMENT=	Next generation GNOME shell
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	gdbus-codegen pkg-config perl msgfmt xgettext python3

#MESON_ARGS+=	-Dnetworkmanager=false
MESON_ARGS+=	-Dsystemd=false
#MESON_ARGS+=	-Dextensions_app=false
#MESON_ARGS+=	-Dextensions_tool=false

TOOL_DEPENDS+=	sassc>=3.6:../../www/sassc
TOOL_DEPENDS+=	asciidoc-[0-9]*:../../textproc/asciidoc
TOOL_DEPENDS+=	gdbus-codegen>=2.64:../../devel/gdbus-codegen

MAKE_ENV+=	LD_LIBRARY_PATH=${WRKSRC}/output/subprojects/gvc

DEPENDS+=       libgdm>=40.0:../../x11/libgdm
#DEPENDS+=       gnome-menus>=2.13.5:../../sysutils/gnome-menus

LDFLAGS+=	${COMPILER_RPATH_FLAG}${PREFIX}/lib/gnome-shell

CONF_FILES+=	${PREFIX}/share/examples/xdg/autostart/gnome-shell-overrides-migration.desktop \
		${PKG_SYSCONFDIR}/xdg/autostart/gnome-shell-overrides-migration.desktop

.include "../../mk/bsd.prefs.mk"

# msgfmt: unknown option -- desktop
.if ${OPSYS} == "NetBSD"
TOOLS_PLATFORM.msgfmt=
.endif

PYTHON_FOR_BUILD_ONLY=	tool

post-extract:
	cp ${FILESDIR}/*.xml ${WRKSRC}/data/dbus-interfaces/

post-install:
	sed -i 's,#!/root/pkgsrc.21Q1/x11/gnome-shell/work/.buildlink/bin/python3,#!/usr/bin/python3,g' ${DESTDIR}${PREFIX}/bin/gnome-shell-extension-tool

.include "../../devel/meson/build.mk"
.include "../../archivers/gnome-autoar/buildlink3.mk"
.include "../../audio/pulseaudio/buildlink3.mk"
.include "../../devel/at-spi2-atk/buildlink3.mk"
.include "../../devel/glib2/schemas.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../graphics/adwaita-icon-theme/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../graphics/librsvg/buildlink3.mk"
.include "../../inputmethod/ibus/buildlink3.mk"
.include "../../lang/gjs/buildlink3.mk"
.include "../../lang/python/tool.mk"
.include "../../mail/evolution-data-server/buildlink3.mk"
.include "../../textproc/json-glib/buildlink3.mk"
.include "../../security/gcr/buildlink3.mk"
.include "../../security/libsecret/buildlink3.mk"
.include "../../security/polkit/buildlink3.mk"
.include "../../sysutils/gsettings-desktop-schemas/buildlink3.mk"
.include "../../wm/mutter/buildlink3.mk"
.include "../../graphics/graphene/buildlink3.mk"
.include "../../x11/gnome-desktop3/buildlink3.mk"
.include "../../sysutils/gsettings-desktop-schemas/buildlink3.mk"
.include "../../x11/xkeyboard-config/buildlink3.mk"
.include "../../textproc/iso-codes/buildlink3.mk"
.include "../../x11/startup-notification/buildlink3.mk"
.include "../../linux/libseccomp/buildlink3.mk"
.include "../../linux/NetworkManager/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
