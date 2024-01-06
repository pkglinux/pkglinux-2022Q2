# $NetBSD$

GITHUB_PROJECT=	zfs
GITHUB_TAG=	refs/tags/zfs-2.2.2
DISTNAME=	zfs-2.2.2
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=openzfs/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/openzfs/zfs/
COMMENT=	Advanced file system and volume manager
LICENSE=	CDDL

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed?=		/pkg/bin/gsed

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

WRKSRC=		${WRKDIR}/zfs-zfs-2.2.2
USE_TOOLS+=	gsed pkg-config gettext gmake gawk git m4 autoreconf autoconf automake intltools msgfmt xgettext perl
USE_LIBTOOL=	yes
USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE+=	lib/libzfs/libzfs.pc.in
PKGCONFIG_OVERRIDE+=	lib/libzfs_core/libzfs_core.pc.in
PKGCONFIG_OVERRIDE+=	lib/libzfsbootenv/libzfsbootenv.pc.in

PREDIR=			${PREFIX}/native
BLDDIR=			${WRKDIR}/build
BLDPRE=			${BLDDIR}${PREDIR}
DSTPRE=			${DESTDIR}${PREDIR}

post-extract:
	${MKDIR} -v ${BLDPRE}

pre-configure:
	cd ${WRKSRC} && ./autogen.sh

do-configure:
	cd ${BLDDIR} && ${WRKSRC}/configure --prefix=/usr --sysconfdir=/etc

do-build:
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${GMAKE} DESTDIR=${BLDPRE} install-strip || ${GMAKE} DESTDIR=${BLDPRE} install)

do-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/lib/
	${CP} -av ${BLDPRE}/lib/udev ${DESTDIR}${PREFIX}/lib/
#	${CP} -av ${BLDPRE}${PREFIX}/* ${DESTDIR}${PREFIX}/
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/etc   ${DSTPRE}/
	${CP} -av ${BLDPRE}/lib   ${DSTPRE}/
	${CP} -av ${BLDPRE}/sbin  ${DSTPRE}/
	${CP} -av ${BLDPRE}/usr   ${DSTPRE}/

post-install:
	cd ${DSTPRE}/etc/init.d/ && \
		cp -v zfs-import   zfs-import.openrc && \
		cp -v zfs-mount    zfs-mount.openrc && \
		cp -v zfs-load-key zfs-load-key.openrc && \
		cp -v zfs-zed      zfs-zed.openrc && \
		cp -v zfs-share    zfs-share.openrc && \
		gsed -e "s|#\!/bin/sh|#\!/sbin/openrc-run|g" -i *.openrc

.include "../../lang/python/tool.mk"
.include "../../devel/zlib/buildlink3.mk"
#.include "../../security/openpam/buildlink3.mk"
.include "../../native/linux-pam/buildlink3.mk"
.include "../../sysutils/attr/buildlink3.mk"
#.include "../../devel/libelf/buildlink3.mk"
.include "../../linux/elfutils/buildlink3.mk"
.include "../../devel/libelf/buildlink3.mk"
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
