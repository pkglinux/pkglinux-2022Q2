# $NetBSD: Makefile,v 1.24 2022/01/24 10:09:30 wiz Exp $

DISTNAME=	alsa-utils-1.2.6
CATEGORIES=	audio
MASTER_SITES=	ftp://ftp.alsa-project.org/pub/utils/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.alsa-project.org/
COMMENT=	Advanced Linux Sound Architecture (ALSA) CLI utilities
LICENSE=	gnu-gpl-v2

#TOOLS_PLATFORM.awk?=		${PREFIX}/bin/nawk
#TOOLS_PLATFORM.sed?=		${PREFIX}/bin/nbsed
TOOLS_PLATFORM.awk?=		${PREFIX}/bin/gawk
TOOLS_PLATFORM.sed?=		${PREFIX}/bin/gsed

GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config gmake gsed bash:run
USE_PKGLOCALEDIR=	yes
USE_NCURSES=		yes
LDFLAGS.DragonFly=	-lm
LDFLAGS.SunOS+=		-lm -lsocket -lnsl
LDFLAGS.NetBSD+=	-lepoll-shim
LDFLAGS.NetBSD+=	-linotify
CPPFLAGS.NetBSD+=	-D__u32=uint32_t -D__u64=uint64_t
CPPFLAGS.NetBSD+=	-Dbswap_16=bswap16 -Dbswap_32=bswap32
CPPFLAGS.NetBSD+=	-Doff64_t=off_t
CPPFLAGS.NetBSD+=	-Dlseek64=lseek

CFLAGS+=		-g

REPLACE_BASH+=		alsaconf/alsaconf.in
REPLACE_BASH+=		alsa-info/alsa-info.sh
REPLACE_BASH+=		bat/alsabat-test.sh

BUILD_DEPENDS+=	xmlto-[0-9]*:../../textproc/xmlto

CONFIGURE_ARGS+=	--prefix=${PREFIX}
#CONFIGURE_ARGS+=	--disable-nls
#CONFIGURE_ARGS+=	--disable-alsaconf # disables building the alsaconf configuration tool which is incompatible with Udev.
CONFIGURE_ARGS+=	--with-udev-rules-dir=${PREFIX}/lib/udev/rules.d
CONFIGURE_ARGS+=	--disable-alsatest
CONFIGURE_ARGS+=	--enable-alsatopology
CONFIGURE_ARGS+=	--with-alsactl-daemonswitch=${PREFIX}/etc/alsa/state-daemon.conf
CONFIGURE_ARGS+=	--with-asound-state-dir=${PREFIX}/var/lib/alsa
CONFIGURE_ARGS+=	--with-alsa-prefix=${PREFIX}

post-install:
	lndir.sh -l sf ${PREFIX}/lib/udev ${PREFIX}/native/lib/udev ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/lib/udev ${PREFIX}/native/usr/lib/udev ${DESTDIR}

.include "../../audio/alsa-lib/buildlink3.mk"
.include "../../mk/bsd.prefs.mk"
.if ${OPSYS} != "Linux" && defined(OPSYS_HAS_KQUEUE)
.include "../../devel/libepoll-shim/buildlink3.mk"
.endif
.include "../../devel/libinotify/buildlink3.mk"
.include "../../devel/ncurses/buildlink3.mk"
.include "../../math/fftw/buildlink3.mk"
.include "../../linux/eudev/buildlink3.mk"
USE_BUILTIN.dl= yes
.include "../../mk/dlopen.buildlink3.mk"
BUILDLINK_TRANSFORM+=	opt:-ldl:${BUILDLINK_LDADD.dl:M*}
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
