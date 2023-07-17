# $NetBSD$

PKGNAME=	grub-efi-2.06
DISTNAME=	grub-2.06
CATEGORIES=	linux
MASTER_SITES=	https://ftp.gnu.org/gnu/grub/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://ftp.gnu.org/gnu/grub/
COMMENT=	the second version of the GRand Unified Bootloader
LICENSE=	gnu-gpl-v3

ONLY_FOR_PLATFORM=	Linux-*-*

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

GNU_CONFIGURE=		yes
USE_PKGLOCALEDIR=	yes

SSP_SUPPORTED=		no
FORTIFY_SUPPORTED=	no

USE_LANGUAGES+=		c c++
USE_TOOLS+=		gmake flex bison gettext:run awk pkg-config

.include "../../lang/python/tool.mk"
PYTHON_FOR_BUILD_ONLY=	tool

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--prefix=${PREFIX}
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}
CONFIGURE_ARGS+=	--datarootdir=${PREFIX}/gnu/share
CONFIGURE_ARGS+=	--program-suffix=-efi
CONFIGURE_ARGS+=	--with-platform=efi
CONFIGURE_ARGS+=	--disable-efiemu
CONFIGURE_ARGS+=	--disable-werror
CONFIGURE_ARGS+=	--disable-grub-mount

#CONFIGURE_ARGS+=	--disable-grub-mkfont
CONFIGURE_ARGS+=	--enable-grub-mkfont
BUILD_DEPENDS+=		dejavu-ttf>=2.34nb1:../../fonts/dejavu-ttf
BUILD_DEPENDS+=		unifont-[0-9]*:../../fonts/unifont
.include "../../graphics/freetype2/buildlink3.mk"

post-install:
	cd ${DESTDIR}${PREFIX}/ && ${RM} -rfv share

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../archivers/xz/buildlink3.mk"
.include "../../misc/getopt/buildlink3.mk"
.include "../../linux/efivar/buildlink3.mk"
.include "../../linux/efibootmgr/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
