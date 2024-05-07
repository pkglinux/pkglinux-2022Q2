# $NetBSD$

DISTNAME=	util-linux-2.37.2
#DISTNAME=	util-linux-2.35.1
CATEGORIES=	native
MASTER_SITES=	https://www.kernel.org/pub/linux/utils/util-linux/v2.37/
#MASTER_SITES=	https://www.kernel.org/pub/linux/utils/util-linux/v2.35/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.kernel.org/pub/linux/utils/util-linux/v2.37/
#HOMEPAGE=	https://www.kernel.org/pub/linux/utils/util-linux/v2.35/
COMMENT=	Random collection of Linux utilities
#COMMENT=	Miscellaneous essential utilities for Linux systems
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-* # Uses Linux kernel headers

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

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

#USE_LIBTOOL=		yes
USE_TOOLS+=		grep gmake makeinfo sed:run tar:build m4 autoconf automake
#USE_TOOLS+=		pkg-config intltools msgfmt xgettext perl
USE_TOOLS+=		intltools msgfmt xgettext perl
#TOOLS_PLATFORM.msgfmt=
#.include "../../lang/python/tool.mk"

#PYTHON_FOR_BUILD_ONLY=	tool

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

#		--enable-static     \
#		--enable-static-programs=blkid \

#		--disable-libuuid \
#		--disable-libblkid \
#		--disable-mcookie \
#		--disable-getopt \

.include "../../mk/bsd.prefs.mk"
CONFIG_ARGS+=		ADJTIME_PATH=/var/lib/hwclock/adjtime
CONFIG_ARGS+=		--libdir=/usr/lib
CONFIG_ARGS+=		--docdir=/usr/share/doc/${DISTNAME}
CONFIG_ARGS+=		--disable-chfn-chsh
CONFIG_ARGS+=		--disable-login
CONFIG_ARGS+=		--disable-nologin
CONFIG_ARGS+=		--disable-su
CONFIG_ARGS+=		--disable-setpriv
CONFIG_ARGS+=		--disable-runuser
CONFIG_ARGS+=		--disable-pylibmount
CONFIG_ARGS+=		--disable-static
CONFIG_ARGS+=		--without-python
CONFIG_ARGS+=		--without-systemd
CONFIG_ARGS+=		--without-systemdsystemunitdir
CONFIG_ARGS+=		--enable-static
CONFIG_ARGS+=		--enable-static-programs=blkid,mount
CONFIG_ARGS+=		--with-selinux=yes
CONFIG_ARGS+=		runstatedir=/run
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
#CONFIG_ENV+=	SUID_CFLAGS="-static"
#CONFIG_ENV+=	SUID_LDFLAGS="-static"
#CONFIG_ENV+=	SUID_CFLAGS="-fpie"
#CONFIG_ENV+=	SUID_LDFLAGS="-pie"
CONFIG_ARGS+=	--host=${MACHINE_GNU_PLATFORM}
CONFIG_ARGS+=	--with-sysroot=${TOOLS_CROSS_DESTDIR}
#CONFIG_ARGS+=	--disable-unshare
#CONFIG_ARGS+=	--without-tinfo
#CONFIG_ARGS+=		--enable-largefile
.endif

do-configure:
	cd ${BLDDIR} && ${WRKSRC}/configure ${CONFIG_ARGS}

do-build:
	cd ${BLDDIR} && ${SETENV} ${MAKE_ENV} ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${SETENV} ${MAKE_ENV} ${GMAKE} DESTDIR=${BLDPRE} install-strip || ${SETENV} ${MAKE_ENV} ${GMAKE} DESTDIR=${BLDPRE} install)
	${MKDIR} -v ${BLDDIR}/${PREFIX}/lib/pkgconfig/
	${CP} -v ${BLDPRE}/usr/lib/pkgconfig/mount.pc ${BLDDIR}/${PREFIX}/lib/pkgconfig/

#	${CP} -v ${BLDPRE}/sbin/blkid ${BLDPRE}/sbin/blkid.0
#	${CP} -v ${BLDPRE}/sbin/blkid.static ${BLDPRE}/sbin/blkid

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDDIR}/* ${DESTDIR}

.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
pre-configure:
	cd ${WRKSRC} && ./autogen.sh -fiv

# Trys to fix "prlimit unshare setns follows non-static declaration"
# The patch doesn't work
post-configure:
	cd ${WRKDIR}/build && echo "#define HAVE_PRLIMIT 1" >> config.h 
	cd ${WRKDIR}/build && echo "#define HAVE_SETNS 1" >> config.h 
	cd ${WRKDIR}/build && echo "#define HAVE_UNSHARE 1" >> config.h 

TOOL_DEPENDS+=		gtexinfo-[0-9]*:../../devel/gtexinfo
#USE_LIBTOOL=		yes
CFLAGS+=		--shared -fPIC
#CFLAGS+=		-fPIC
#CFLAGS+=		-DHAVE_PRLIMIT=1
#CFLAGS+=		-DHAVE_UNSHARE=1
#CFLAGS+=		-DHAVE_SETNS=1
#CFLAGS+=		-D__USE_FILE_OFFSET64=1
LDFLAGS+=		-lpthread -ldl
#CFLAGS+=		-static
#LDFLAGS+=		-static
#CPPFLAGS+=		-static
CONFIG_ARGS+=		--with-selinux=no
USE_BUILTIN.zlib=	no
USE_BUILTIN.readline=	no

PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.else
.include "../../devel/gtexinfo/buildlink3.mk"
.endif

.include "../../linux/selinux-libselinux/buildlink3.mk"
.include "../../linux/selinux-libsepol/buildlink3.mk"
.include "../../linux/selinux-libsemanage/buildlink3.mk"
.include "../../linux/audit/buildlink3.mk"
.include "../../linux/semodule-utils/buildlink3.mk"

.include "../../linux/eudev/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/ncursesw/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
#.include "../../sysutils/libcap/buildlink3.mk"
.include "../../linux/libcap-ng/buildlink3.mk"
.include "../../sysutils/attr/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
