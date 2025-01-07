# $NetBSD$

GITHUB_PROJECT=	zfs
#GITHUB_TAG=	refs/tags/zfs-2.2.2
#DISTNAME=	zfs-2.2.2
#GITHUB_TAG=	refs/tags/zfs-2.2.7
#DISTNAME=	zfs-2.2.7
#GITHUB_TAG=	refs/tags/zfs-2.3.0-rc4
#DISTNAME=	zfs-2.3.0-rc4
#GITHUB_TAG=	refs/tags/zfs-2.1.16
#DISTNAME=	zfs-2.1.16
GITHUB_TAG=	refs/tags/zfs-2.2.7
DISTNAME=	zfs-2.2.7
PKGNAME=	zfs-2.2.7
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=openzfs/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/openzfs/zfs/
COMMENT=	Advanced file system and volume manager
LICENSE=	CDDL

#TOOLS_PLATFORM.awk?=		${_PREFIX}/bin/nawk
#TOOLS_PLATFORM.sed?=		${_PREFIX}/bin/nbsed
TOOLS_PLATFORM.awk?=		${PREFIX}/bin/gawk
TOOLS_PLATFORM.sed?=		${PREFIX}/bin/gsed

MY_CHKCONFIG=	unknown
MY_RC_UPDATE=	unknown
ZFS_SYSV_RC1=	unknown
ZFS_SYSV_RC2=	unknown
ZFS_SYSV_RC3=	unknown
ZFS_SYSV_RC4=	unknown
ZFS_SYSV_RC5=	unknown

FILES_SUBST+=	MY_CHKCONFIG=${MY_CHKCONFIG:Q}
FILES_SUBST+=	MY_RC_UPDATE=${MY_RC_UPDATE:Q}
FILES_SUBST+=	ZFS_SYSV_RC1=${ZFS_SYSV_RC1:Q}
FILES_SUBST+=	ZFS_SYSV_RC2=${ZFS_SYSV_RC2:Q}
FILES_SUBST+=	ZFS_SYSV_RC3=${ZFS_SYSV_RC3:Q}
FILES_SUBST+=	ZFS_SYSV_RC4=${ZFS_SYSV_RC4:Q}
FILES_SUBST+=	ZFS_SYSV_RC5=${ZFS_SYSV_RC5:Q}

MY_CHKCONFIG=	${PREFIX}/native/usr/sbin/chkconfig
MY_RC_UPDATE=	${PREFIX}/native/sbin/rc-update
ZFS_SYSV_RC1=	zfs-import
ZFS_SYSV_RC2=	zfs-mount
ZFS_SYSV_RC3=	zfs-load-key
ZFS_SYSV_RC4=	zfs-zed
ZFS_SYSV_RC5=	zfs-share

BUILD_DEFS+=	MY_CHKCONFIG
BUILD_DEFS+=	MY_RC_UPDATE
BUILD_DEFS+=	ZFS_SYSV_RC1
BUILD_DEFS+=	ZFS_SYSV_RC2
BUILD_DEFS+=	ZFS_SYSV_RC3
BUILD_DEFS+=	ZFS_SYSV_RC4
BUILD_DEFS+=	ZFS_SYSV_RC5

#WRKSRC=	${WRKDIR}/zfs-zfs-2.2.2
WRKSRC=		${WRKDIR}/zfs-2.2.7
#WRKSRC=	${WRKDIR}/zfs-2.3.0-rc4
#WRKSRC=	${WRKDIR}/zfs-2.1.16
#WRKSRC=	${WRKDIR}/zfs-zfs-2.2.7
#GNU_CONFIGURE=	no
#NO_CONFIGURE=	yes
USE_NATIVE_GCC=	yes
#USE_LANGUAGES=	c c+
#USE_LANGUAGES+=	c99
USE_TOOLS+=	gsed pkg-config ggettext gmake gm4 autoreconf autoconf automake intltools msgfmt xgettext perl
USE_LIBTOOL=	yes
USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE+=	lib/libzfs/libzfs.pc.in
PKGCONFIG_OVERRIDE+=	lib/libzfs_core/libzfs_core.pc.in
PKGCONFIG_OVERRIDE+=	lib/libzfsbootenv/libzfsbootenv.pc.in

PREDIR=			${PREFIX}/native
#BLDDIR=		${WRKDIR}/build
BLDDIR=			${WRKSRC}
BLDPRE=			${BLDDIR}${PREDIR}
DSTPRE=			${DESTDIR}${PREDIR}

post-extract:
	${MKDIR} -v ${BLDPRE}

CONFIGURE_ARGS+=	--prefix=/usr
CONFIGURE_ARGS+=	--sysconfdir=/etc
CONFIGURE_ARGS+=	--disable-systemd
#CONFIGURE_ARGS+=	--disable-pam
CONFIGURE_ARGS+=	--with-config=user
#CONFIGURE_ARGS+=	--with-linux=${PREFIX}/native/lib/modules/"`uname -r`"/source
#CONFIGURE_ARGS+=	--with-linux-obj=${PREFIX}/native/lib/modules/"`uname -r`"/build
#CONFIGURE_ARGS+=	--enable-debug
#CONFIGURE_ARGS+=	--enable-linux-builtin

do-configure0:
	cd ${WRKSRC} && ./autogen.sh
	cd ${BLDDIR} && ${SETENV} ${CONFIGURE_ENV} ${WRKSRC}/configure ${CONFIGURE_ARGS}

do-build0:
	cd ${BLDDIR} && ${SETENV} ${MAKE_ENV} ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && ${SETENV} ${MAKE_ENV} ${GMAKE} DESTDIR=${BLDPRE} install-strip

#	ssh localhost "cd ${WRKSRC}; ./autogen.sh"
do-build:
	cd ${WRKSRC} && ./autogen.sh
	ssh alex@localhost "cd ${BLDDIR} && sudo ./configure --prefix=/usr --sysconfdir=/etc --disable-systemd --disable-pam"
	ssh alex@localhost "cd ${BLDDIR} && sudo make -j${MAKE_JOBS}"
	cd ${BLDDIR} && ${SETENV} ${MAKE_ENV} ${GMAKE} DESTDIR=${BLDPRE} install-strip

#	ssh localhost "cd ${BLDDIR}; make DESTDIR=${BLDPRE} install-strip"

do-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/lib/
	${CP} -av ${BLDPRE}/lib/udev ${DESTDIR}${PREFIX}/lib/
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/etc   ${DSTPRE}/
	${CP} -av ${BLDPRE}/lib   ${DSTPRE}/
	${CP} -av ${BLDPRE}/sbin  ${DSTPRE}/
	${CP} -av ${BLDPRE}/usr   ${DSTPRE}/

post-install:
	${MKDIR} -v ${DSTPRE}/etc/rc.d/init.d/
	cd ${DSTPRE}/etc/rc.d/init.d/ && \
		cp -v ../../init.d/zfs-import   . && \
		cp -v ../../init.d/zfs-mount    . && \
		cp -v ../../init.d/zfs-zed      . && \
		cp -v ../../init.d/zfs-load-key . && \
		cp -v ../../init.d/zfs-share    .
	cd ${DSTPRE}/etc/init.d/ && \
		gsed -e "s|#\!/bin/sh|#\!/sbin/openrc-run|g" -i zfs-* && \
		gsed -e "s|if true|if [ ! -e /sbin/openrc-run ]|g" -i zfs-*

#	${MKDIR} -v ${DSTPRE}/lib/modules/"`uname -r`"/extra/
#	cd ${DSTPRE}/lib/modules/"`uname -r`"/extra/ && ${CP} -av ${FILESDIR}/*.ko.xz .

PLIST_SRC=
GENERATE_PLIST+= \
 	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;

.include "../../lang/python/tool.mk"
.include "../../lang/python/application.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../archivers/xz/buildlink3.mk"
.include "../../sysutils/attr/buildlink3.mk"
#.include "../../security/openpam/buildlink3.mk"
#.include "../../native/linux-pam/buildlink3.mk"
#.include "../../devel/libelf/buildlink3.mk"
.include "../../linux/elfutils/buildlink3.mk"
.include "../../linux/libtirpc/buildlink3.mk"
.include "../../devel/libffi/buildlink3.mk"
.include "../../devel/libblkid/buildlink3.mk"
.include "../../devel/libuuid/buildlink3.mk"
.include "../../linux/eudev/buildlink3.mk"
.include "../../linux/libcap-ng/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../linux/libaio/buildlink3.mk"
.include "../../native/chkconfig/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
