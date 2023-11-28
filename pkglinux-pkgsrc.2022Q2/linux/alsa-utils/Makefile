# $NetBSD: Makefile,v 1.21 2018/04/21 13:38:04 wiz Exp $

DISTNAME=	alsa-utils-1.2.1
PKGREVISION=	1
CATEGORIES=	linux	
MASTER_SITES=	ftp://ftp.alsa-project.org/pub/utils/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.alsa-project.org/
COMMENT=	Advanced Linux Sound Architecture (ALSA) CLI utilities
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config gmake gsed bash:run
USE_PKGLOCALEDIR=	yes
USE_NCURSES=		yes

#CFLAGS+=		-g

#REPLACE_BASH+=		alsaconf/alsaconf.in
#REPLACE_BASH+=		alsa-info/alsa-info.sh
#REPLACE_BASH+=		bat/alsabat-test.sh

#BUILD_DEPENDS+=	xmlto-[0-9]*:../../textproc/xmlto

#CONFIGURE_ARGS+=	--disable-nls
# This switch disables building the alsaconf configuration tool which is incompatible with Udev. 
CONFIGURE_ARGS+=	--disable-alsaconf
# Omit this switch if you have installed xmlto-0.0.28 and wish to regenerate the man pages. 
CONFIGURE_ARGS+=	--disable-xmlto
# Omit this switch if you have installed fftw-3.3.8 and wish to install the Basic Audio Tester (BAT). 
CONFIGURE_ARGS+=	--disable-bat
# This switch forces the use of wide-character ncurses libraries.
CONFIGURE_ARGS+=	--with-curses=ncursesw

.include "../../audio/alsa-lib/buildlink3.mk"
#.include "../../devel/ncurses/buildlink3.mk"
.include "../../devel/ncursesw/buildlink3.mk"
#.include "../../math/fftw/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
