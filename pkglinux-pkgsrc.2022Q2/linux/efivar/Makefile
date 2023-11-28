# $NetBSD$

DISTNAME=	efivar-37
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=rhboot/efivar/releases/download/37/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/rhboot/efivar/releases/download/37/ # TODO: check
COMMENT=	Tools and libraries to manipulate EFI variables
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	pkg-config gmake

PKGCONFIG_OVERRIDE+=	src/efiboot.pc.in
PKGCONFIG_OVERRIDE+=	src/efivar.pc.in

MAKE_ENV+=	CFLAGS="-O2 -Wno-stringop-truncation"
MAKE_ENV+=	LIBDIR=${PREFIX}/lib

.include "../../mk/bsd.pkg.mk"
