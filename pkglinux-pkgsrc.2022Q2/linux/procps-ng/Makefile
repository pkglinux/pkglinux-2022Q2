# $NetBSD$

DISTNAME=	procps-ng-3.3.15
CATEGORIES=	linux
MASTER_SITES=	https://sourceforge.net/projects/procps-ng/files/Production/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://sourceforge.net/projects/procps-ng/files/Production/
COMMENT=	contains programs for monitoring processes
LICENSE=	gnu-gpl-v2

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake grep gsed gawk findutils diffutils bash binutils coreutils eudev
USE_TOOLS+=		gmake pkg-config intltools msgfmt xgettext perl
TOOLS_PLATFORM.msgfmt=

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config gmake
USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE+=	proc/libprocps.pc.in

CONFIGURE_ARGS+=	--docdir=${PREFIX}/share/doc/${PKGNAME}
CONFIGURE_ARGS+=	--disable-kill
# pidof conflicts with sysutils/psmisc
CONFIGURE_ARGS+=	--disable-pidof

post-extract:
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/procps-ng-3.3.15.patch

post-install:
	lndir.sh -l sf ${PREFIX}/bin ${PREFIX}/native/bin ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/sbin ${PREFIX}/native/sbin ${DESTDIR}
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/bin/
#	cd ${DESTDIR}${PREFIX}/native/bin/ && ${LN} -sfv ../../bin/* .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/sbin/
#	cd ${DESTDIR}${PREFIX}/native/sbin/ && ${LN} -sfv ../../sbin/* .

.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
MAKE_ENV+= 		PATH=${TOOLDIR}/bin:$$PATH
MAKE_ENV+=		AS_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-as"
MAKE_ENV+=		LD_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ld"
CONFIGURE_ENV+=		BUILD_CC=${PREFIX}/gcc6/bin/gcc
CONFIGURE_ARGS+=	--disable-libselinux
CONFIGURE_ARGS+=	--disable-watch8bit
CONFIGURE_ARGS+=	--without-systemd
PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.endif

.include "../../devel/ncurses/buildlink3.mk"
.include "../../devel/ncursesw/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
