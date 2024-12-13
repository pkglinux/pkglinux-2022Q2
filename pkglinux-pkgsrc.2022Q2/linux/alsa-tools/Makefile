# $NetBSD$

#DISTNAME=	alsa-tools-1.1.7
DISTNAME=	alsa-tools-1.2.5
CATEGORIES=	linux
MASTER_SITES=	https://www.alsa-project.org/files/pub/tools/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.alsa-project.org/files/pub/tools/
COMMENT=	advanced tools for certain sound cards
LICENSE=	gnu-gpl-v2

USE_LANGUAGES=	c c++
#GCC_REQD+=		7

#USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		gmake pkgconfig gsed bash:run
CONFIGURE_ARGS+=	--prefix=${PREFIX}
#CONFIGURE_ARGS+=	--bindir=${PREFIX}/bin
#CONFIGURE_ARGS+=	--sbindir=${PREFIX}/sbin
#CONFIGURE_ARGS+=	--mandir=${PREFIX}/man
#CONFIGURE_ARGS+=	--includedir=${PREFIX}/include
#CONFIGURE_ARGS+=	--libdir=${PREFIX}/lib
#CONFIGURE_ARGS+=	--localedir=${PREFIX}/share/locale
#CONFIGURE_ARGS+=	--docdir=${PREFIX}/share/doc/packages/alsa-tools
#CONFIGURE_ARGS+=	--confdir=${PREFIX}/etc/
#MAKE_ENV+=		CONFIGURE_ARGS=${CONFIGURE_ARGS}
BUILD_DEPENDS+=	xmlto-[0-9]*:../../textproc/xmlto

#CONFIGURE_ARGS+=	--disable-alsamixer
CONFIGURE_ARGS+=	--disable-xmlto
CONFIGURE_ARGS+=	--with-alsa-inc-prefix=${PREFIX}/include/alsa
CONFIGURE_ARGS+=	--with-alsa-prefix=${PREFIX}/lib

#post-extract:
#	cd ${WRKSRC} && sed -i -e "/#include/i #define __user" \
#		hdspconf/src/*.cxx  \
#		hdspmixer/src/*.cxx \
#		hdsploader/hdsploader.c && \
#	sed -i -e '39 s/uint32_t/__u32/' hdspmixer/src/HDSPMixerWindow.cxx && \
#	sed -i -e '40 s/uint64_t/__u64/' hdspmixer/src/HDSPMixerWindow.cxx && \
#	sed -i -e 's/snd_sb_csp_microcode_t/struct snd_sb_csp_microcode/' sb16_csp/cspctl.c

do-configure:
.	for _sub in as10k1 envy24control hdsploader hdspconf hdspmixer \
		mixartloader pcxhrloader rmedigicontrol sb16_csp seq/sbiload sscape_ctl \
		us428control usx2yloader vxloader echomixer ld10k1 \
		hwmixvolume hdajackretask hda-verb hdajacksensetest
	cd ${WRKSRC}/${_sub} && ./configure ${CONFIGURE_ARGS}
.	endfor

do-build:
.	for _sub in as10k1 envy24control hdsploader hdspconf hdspmixer \
		mixartloader pcxhrloader rmedigicontrol sb16_csp seq/sbiload sscape_ctl \
		us428control usx2yloader vxloader echomixer ld10k1 \
		hwmixvolume hdajackretask hda-verb hdajacksensetest
	cd ${WRKSRC}/${_sub} && ${GMAKE} -j${MAKE_JOBS}
.	endfor

do-install:
.	for _sub in as10k1 envy24control hdsploader hdspconf hdspmixer \
		mixartloader pcxhrloader rmedigicontrol sb16_csp seq/sbiload sscape_ctl \
		us428control usx2yloader vxloader echomixer ld10k1 \
		hwmixvolume hdajackretask hda-verb hdajacksensetest
	cd ${WRKSRC}/${_sub} && ${SETENV} DESTDIR=${DESTDIR} ${GMAKE} -j${MAKE_JOBS} install
.	endfor

.include "../../devel/ncurses/buildlink3.mk"
.include "../../math/fftw/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../x11/fltk13/buildlink3.mk"
.include "../../audio/alsa-lib/buildlink3.mk"
.include "../../audio/alsa-utils/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
