# $NetBSD$

DISTNAME=	efibootmgr-17
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=rhboot/efibootmgr/archive/17/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/rhboot/efibootmgr/archive/17/ # TODO: check
COMMENT=	to modify the Intel EFI Boot Manager
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	pkg-config gmake

MAKE_ENV+=	EFI_LOADER=grubx64.efi
MAKE_ENV+=	EFIDIR=PKGLINUX
MAKE_ENV+=	prefix=${PREFIX}
MAKE_ENV+=	libdir=${PREFIX}/lib

.include "../../linux/efivar/buildlink3.mk"
.include "../../devel/popt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
