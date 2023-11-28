# $NetBSD$

DISTNAME=	iptables-1.8.8
CATEGORIES=	linux
MASTER_SITES=	https://www.netfilter.org/pub/iptables/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.netfilter.org/pub/iptables/
COMMENT=	Interface to Linux netfilter firewalling subsystem
LICENSE=	gnu-gpl-v2

# This package requires a Linux 2.4.4 kernel, or above.
ONLY_FOR_PLATFORM=	Linux-[2-9]*-*

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake pkg-config

PKGCONFIG_OVERRIDE+=	iptables/xtables.pc.in
PKGCONFIG_OVERRIDE+=	libipq/libipq.pc.in
PKGCONFIG_OVERRIDE+=	libiptc/libip4tc.pc.in
PKGCONFIG_OVERRIDE+=	libiptc/libip6tc.pc.in
PKGCONFIG_OVERRIDE+=	libiptc/libiptc.pc.in

CONFIGURE_ARGS+=	--disable-nftables

.include "../../mk/bsd.pkg.mk"
