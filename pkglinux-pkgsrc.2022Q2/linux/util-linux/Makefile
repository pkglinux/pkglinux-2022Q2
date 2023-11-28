# $NetBSD$

DISTNAME=	util-linux-2.37.2
#DISTNAME=	util-linux-2.35.1
CATEGORIES=	linux
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

#CONFLICTS+=	libblkid-[0-9]*
#CONFLICTS+=	libuuid-[0-9]*
#CONFLICTS+=	getopt-[0-9]*
#CONFLICTS+=	mcookie-[0-9]*

USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake grep gsed gawk findutils diffutils bash binutils coreutils eudev
USE_TOOLS+=		gmake pkg-config intltools msgfmt xgettext perl
TOOLS_PLATFORM.msgfmt=
#USE_LIBTOOL=		yes

GNU_CONFIGURE=		YES
MAKE_ENV+=		DESTDIR=${PREFIX}
MAKE_ENV+=		ETCDIR=${PREFIX}/share/examples/util-linux
MAKE_ENV+=		FDPRMFILE=${PKG_SYSCONFDIR}/fdprm
MAKE_ENV+=		INFO_DIR=/${PKGINFODIR}
#MAKE_ENV+=		MAN_DIR=/${PKGMANDIR}
MAKE_ENV+=		MAN_DIR=${PREFIX}/share/man

PKGCONFIG_OVERRIDE+=	libfdisk/fdisk.pc.in
PKGCONFIG_OVERRIDE+=	libmount/mount.pc.in
PKGCONFIG_OVERRIDE+=	libsmartcols/smartcols.pc.in
#PKGCONFIG_OVERRIDE+=	libblkid/blkid.pc.in
#PKGCONFIG_OVERRIDE+=	libuuid/uuid.pc.in

#CONFIGURE_ARGS+=	--libdir=${PREFIX}/lib
CONFIGURE_ARGS+=	--docdir=${PREFIX}/share/doc/util-linux-2.37.2
CONFIGURE_ARGS+=	--disable-chfn-chsh
CONFIGURE_ARGS+=	--disable-login
CONFIGURE_ARGS+=	--disable-nologin
CONFIGURE_ARGS+=	--disable-su
CONFIGURE_ARGS+=	--disable-setpriv
CONFIGURE_ARGS+=	--disable-runuser
CONFIGURE_ARGS+=	--disable-pylibmount
CONFIGURE_ARGS+=	--disable-static
CONFIGURE_ARGS+=	--without-python
CONFIGURE_ARGS+=	--without-systemd
CONFIGURE_ARGS+=	--without-systemdsystemunitdir
CONFIGURE_ARGS+=	runstatedir=/var/run
CONFIGURE_ARGS+=	--disable-libuuid
CONFIGURE_ARGS+=	--disable-libblkid
#CONFIGURE_ARGS+=	--disable-mcookie
#CONFIGURE_ARGS+=	--disable-getopt

# conflicts with misc/getopt
# conflicts with x11/mcookie
post-install:
	${MKDIR} -v ${WRKDIR}/.destdir${PREFIX}/sbin/
	${LN} -svf ../bin/getopt ${WRKDIR}/.destdir${PREFIX}/sbin/
	${LN} -svf ../bin/mcookie ${WRKDIR}/.destdir${PREFIX}/sbin/
	${MKDIR} -v ${WRKDIR}/.destdir${PREFIX}/share/man/man1/
	${MKDIR} -v ${WRKDIR}/.destdir${PREFIX}/share/man/man5/
	${MKDIR} -v ${WRKDIR}/.destdir${PREFIX}/share/man/man8/
	(cd ${WRKDIR}/.destdir${PREFIX}/share/man/man1/ && ${LN} -svf ../../../man/man1/* .)
	(cd ${WRKDIR}/.destdir${PREFIX}/share/man/man5/ && ${LN} -svf ../../../man/man5/* .)
	(cd ${WRKDIR}/.destdir${PREFIX}/share/man/man8/ && ${LN} -svf ../../../man/man8/* .)

.include "../../devel/gettext-lib/buildlink3.mk"
#.include "../../devel/ncurses/buildlink3.mk"
.include "../../devel/ncursesw/buildlink3.mk"
.include "../../devel/gtexinfo/buildlink3.mk"
# zlib used for cramfs
.include "../../devel/zlib/buildlink3.mk"
.include "../../sysutils/libcap/buildlink3.mk"
.include "../../linux/acl/buildlink3.mk"
.include "../../sysutils/attr/buildlink3.mk"
#.include "../../linux/kernel-headers/buildlink3.mk"
#.include "../../linux/glibc/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
#.include "../../devel/libblkid/buildlink3.mk"
#.include "../../devel/libuuid/buildlink3.mk"
#.include "../../linux/eudev/buildlink3.mk"
#.include "../../devel/pcre2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
