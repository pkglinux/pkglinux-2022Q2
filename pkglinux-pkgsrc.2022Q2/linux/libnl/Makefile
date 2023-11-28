# $NetBSD$

GITHUB_PROJECT=	libnl
DISTNAME=	libnl-3.5.0
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=thom311/}
GITHUB_RELEASE=	libnl3_5_0

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/thom311/libnl/
COMMENT=	APIs to netlink protocol based Linux kernel interfaces
LICENSE=	gnu-gpl-v2

USE_LIBTOOL=	yes
GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config gmake
CONFIGURE_ARGS+=	--disable-static

PKGCONFIG_OVERRIDE+=	libnl-3.0.pc.in
PKGCONFIG_OVERRIDE+=	libnl-cli-3.0.pc.in
PKGCONFIG_OVERRIDE+=	libnl-genl-3.0.pc.in
PKGCONFIG_OVERRIDE+=	libnl-idiag-3.0.pc.in
PKGCONFIG_OVERRIDE+=	libnl-nf-3.0.pc.in
PKGCONFIG_OVERRIDE+=	libnl-route-3.0.pc.in
PKGCONFIG_OVERRIDE+=	libnl-xfrm-3.0.pc.in

.include "../../mk/bsd.pkg.mk"
