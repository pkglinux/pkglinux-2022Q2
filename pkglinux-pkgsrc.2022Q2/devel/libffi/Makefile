# $NetBSD: Makefile,v 1.49 2022/02/07 08:06:18 wiz Exp $

DISTNAME=	libffi-3.4.2
PKGREVISION=	2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=libffi/}
GITHUB_RELEASE=	v${PKGVERSION_NOREV}

MAINTAINER=	asau@inbox.ru
HOMEPAGE=	https://www.sourceware.org/libffi/
COMMENT=	Foreign function interface
LICENSE=	mit

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
#USE_TOOLS+=		gmake pkg-config readelf autoconf automake m4
USE_TOOLS+=		gmake pkg-config readelf
USE_TOOLS.SunOS+=	perl
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--disable-multi-os-directory
CONFIGURE_ARGS+=	--includedir=${PREFIX}/include
# Disable static trampoline support. It's a new security feature in libffi, but some BLFS packages (notably GJS and gobject-introspection) have not been adapted for it.
CONFIGURE_ARGS+=	--disable-exec-static-tramp
# Ensure GCC optimizes for the current system. If this is not specified, the system is guessed and the code generated may not be correct for some systems. If the generated code will be copied from the native system to a less capable system, use the less capable system as a parameter. For details about alternative system types, see the x86 options in the GCC manual.
#CONFIGURE_ARGS+=	 --with-gcc-arch=native
#CONFIGURE_ARGS+=	 --with-gcc-arch=k8
#CONFIGURE_ARGS+=	 --enable-portable-binary=true

PKGCONFIG_OVERRIDE+=	libffi.pc.in
INFO_FILES=		yes
TEST_DEPENDS+=		dejagnu-[0-9]*:../../devel/dejagnu
TEST_TARGET=		check

.include "../../mk/compiler.mk"
# The Compaq C frontend groks .s, but not .S. Assemble osf.S directly w/ as(1).
pre-build:
.if !empty(PKGSRC_COMPILER:Mccc)
	cd ${WRKSRC} && ./libtool --mode=compile --tag=CC as -I. -Iinclude -o src/alpha/osf.lo -c src/alpha/osf.S
.endif

.include "../../mk/bsd.prefs.mk"

# patch-src_m68k_ffi.c uses m68k_sync_icache(2)
.if !empty(MACHINE_PLATFORM:MNetBSD-*-m68k)
LIBS+=		-lm68k
.endif

# fix http://gnats.netbsd.org/42865
.if !empty(MACHINE_PLATFORM:MSunOS-*-i386) && !empty(CC_VERSION:Mgcc-[23]*)
CPPFLAGS+=	-D__PIC__
.endif

# On platforms where ld(1) is LLVM ld, relocations against read-only
# segments has to be explicitly allowed.
.if !empty(MACHINE_PLATFORM:MFreeBSD-1[2-9].*-*)
CFLAGS+=	-Wl,-z,notext
.endif

#pre-configure:
#	cd ${WRKSRC} && autoreconf -fvi

post-install:
	lndir.sh -l sf ${PREFIX}/include ${PREFIX}/native/usr/include ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/lib ${PREFIX}/native/usr/lib ${DESTDIR}
#	lndir.sh ${DESTDIR}${PREFIX}/include ${DESTDIR}${PREFIX}/native/usr/include
#	lndir.sh ${DESTDIR}${PREFIX}/lib ${DESTDIR}${PREFIX}/native/usr/lib

.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
