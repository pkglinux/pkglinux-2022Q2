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
do-configure:
	cd ${BLDDIR} && \
	${WRKSRC}/configure ADJTIME_PATH=/var/lib/hwclock/adjtime   \
		--libdir=/usr/lib	\
		--docdir=/usr/share/doc/${DISTNAME} \
		--disable-chfn-chsh  \
		--disable-login      \
		--disable-nologin    \
		--disable-su         \
		--disable-setpriv    \
		--disable-runuser    \
		--disable-pylibmount \
		--disable-static     \
		--without-python     \
		--without-systemd    \
		--without-systemdsystemunitdir \
		--enable-static     \
		--enable-static-programs=blkid,mount \
		--with-selinux=yes \
		runstatedir=/run

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
.include "../../sysutils/libcap/buildlink3.mk"
.include "../../sysutils/attr/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
