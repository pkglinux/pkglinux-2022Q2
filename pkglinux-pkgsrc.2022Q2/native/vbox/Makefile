# $NetBSD$

DISTNAME=	VirtualBox-7.0.12a
CATEGORIES=	native
MASTER_SITES=	https://download.virtualbox.org/virtualbox/7.0.12/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://download.virtualbox.org/virtualbox/7.0.12/
COMMENT=	general-purpose full virtualizer for x86 hardware
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-* # Uses Linux kernel headers

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
#TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
#TOOLS_PLATFORM.sed=		/pkg/bin/gsed

USE_LANGUAGES=		c c++
USE_NATIVE_GCC=	yes
#USE_NATIVE_GCC=	no
USE_PKGSRC_GCC=		no
#GCC_REQD+=		6

PKGSRC_USE_SSP=		no
MKPIE_SUPPORTED=	no
PKGSRC_MKPIE=		no
#STACK_CHECK_SUPPORTED=	no
#PKGSRC_USE_STACK_CHECKD=	no
#SSP_SUPPORTED=		yes

USE_TOOLS+=		makeself gmake pkg-config intltools msgfmt xgettext perl

WRKSRC=			${WRKDIR}/VirtualBox-7.0.12

PKGCONFIG_OVERRIDE+=	src/libs/liblzma-5.4.1/liblzma.pc.in
PKGCONFIG_OVERRIDE+=	src/libs/libogg-1.3.5/ogg.pc.in
PKGCONFIG_OVERRIDE+=	src/libs/libpng-1.6.37/libpng.pc.in
PKGCONFIG_OVERRIDE+=	src/libs/libpng-1.6.37/scripts/libpng.pc.in
PKGCONFIG_OVERRIDE+=	src/libs/libtpms-0.9.6/libtpms.pc.in
PKGCONFIG_OVERRIDE+=	src/libs/libvorbis-1.3.7/vorbis.pc.in
PKGCONFIG_OVERRIDE+=	src/libs/libvorbis-1.3.7/vorbisenc.pc.in
PKGCONFIG_OVERRIDE+=	src/libs/libvorbis-1.3.7/vorbisfile.pc.in
PKGCONFIG_OVERRIDE+=	src/libs/libxml2-2.9.14/libxml-2.0.pc.in
PKGCONFIG_OVERRIDE+=	src/libs/zlib-1.2.13/zlib.pc.in
 
DEPENDS+=	yasm-[0-9]*:../../devel/yasm
DEPENDS+=	tex-pdftex-[0-9]*:../../print/tex-pdftex
DEPENDS+=	makeself-[0-9]*:../../archivers/makeself

#GNU_CONFIGURE=		no
#NO_BUILD=		yes
#NO_CONFIGURE=		yes
#GNU_CONFIGURE_PREDIR=	${PREFIX}
PREDIR=			${PREFIX}/native
BLDDIR=			${WRKDIR}/build
BLDPRE=			${BLDDIR}${PREDIR}
DSTPRE=			${DESTDIR}${PREDIR}

post-extract:
	${MKDIR} -v ${BLDPRE}

do-configure:
	cd ${BLDDIR} && ${WRKSRC}/configure --disable-hardening

do-build:
	cd ${BLDDIR} && kmk -j${MAKE_JOBS}

#	cd ${BLDDIR} && (${GMAKE} DESTDIR=${BLDPRE} install-strip || ${GMAKE} DESTDIR=${BLDPRE} install)

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.include "../../devel/bison/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../x11/libXcursor/buildlink3.mk"
.include "../../x11/libXinerama/buildlink3.mk"
.include "../../x11/libXrandr/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../net/libIDL/buildlink3.mk"
.include "../../devel/SDL/buildlink3.mk"
.include "../../devel/SDL2/buildlink3.mk"
.include "../../audio/alsa-lib/buildlink3.mk"
.include "../../audio/pulseaudio/buildlink3.mk"
.include "../../sysutils/hal/buildlink3.mk"
.include "../../sysutils/libcap/buildlink3.mk"
.include "../../linux/LVM2/buildlink3.mk"
.include "../../security/openpam/buildlink3.mk"
.include "../../lang/python/tool.mk"
.include "../../devel/gsoap/buildlink3.mk"
.include "../../x11/libXmu/buildlink3.mk"
.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../linux/glslang/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
