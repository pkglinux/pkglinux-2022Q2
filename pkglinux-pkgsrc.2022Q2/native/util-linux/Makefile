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

do-configure:
	cd ${BLDDIR} && ${WRKSRC}/configure ${CONFIG_ARGS}

do-build:
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${GMAKE} DESTDIR=${BLDPRE} install-strip || ${GMAKE} DESTDIR=${BLDPRE} install)
	${MKDIR} -v ${BLDDIR}/${PREFIX}/lib/pkgconfig/
	${CP} -v ${BLDPRE}/usr/lib/pkgconfig/mount.pc ${BLDDIR}/${PREFIX}/lib/pkgconfig/

#	${CP} -v ${BLDPRE}/sbin/blkid ${BLDPRE}/sbin/blkid.0
#	${CP} -v ${BLDPRE}/sbin/blkid.static ${BLDPRE}/sbin/blkid

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDDIR}/* ${DESTDIR}

.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
USE_LIBTOOL=		yes
CFLAGS+=		-fPIC
LDFLAGS+=		-lpthread -ldl
CONFIGURE_ARGS+=	--host=${MACHINE_GNU_PLATFORM}
CONFIGURE_ARGS+=	--with-sysroot=${TOOLS_CROSS_DESTDIR}
USE_BUILTIN.zlib=	no
USE_BUILTIN.readline=	no

PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.endif

.include "../../linux/selinux-libselinux/buildlink3.mk"
.include "../../linux/selinux-libsepol/buildlink3.mk"
.include "../../linux/selinux-libsemanage/buildlink3.mk"
.include "../../linux/audit/buildlink3.mk"
.include "../../linux/semodule-utils/buildlink3.mk"

.include "../../linux/eudev/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/ncursesw/buildlink3.mk"
.include "../../devel/gtexinfo/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
#.include "../../sysutils/libcap/buildlink3.mk"
.include "../../linux/libcap-ng/buildlink3.mk"
.include "../../sysutils/attr/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
