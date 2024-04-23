# $NetBSD$

DISTNAME=	busybox-1.36.0
#DISTNAME=	busybox-1.35.0
KVER=		5.18.17
#PKGNAME=	${DISTNAME:S/busybox/initramfs/}-${KVER}
PKGNAME=	initramfs-${KVER}
CATEGORIES=	native
MASTER_SITES=	https://busybox.net/downloads/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://busybox.net/downloads/
COMMENT=	common UNIX utilities into a single small executable
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

USE_LANGUAGES=		c c++

#NO_BUILD=	yes
#NO_CONFIGURE=	yes
#GNU_CONFIGURE=	no
USE_TOOLS+=	gmake gstrip gcpio xz gfind depmod gtar

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

#GNU_CONFIGURE=		no
#NO_BUILD=		yes
#NO_CONFIGURE=		yes
#GNU_CONFIGURE_PREDIR=	${PREFIX}
PREDIR=			${PREFIX}/native
BLDDIR=			${WRKSRC}
BLDPRE=			${BLDDIR}${PREDIR}
DSTPRE=			${DESTDIR}${PREDIR}

#MAKE_ENV+=	LIBDIR=${BLDPRE}/lib

post-extract:
	${MKDIR} -v ${BLDPRE}
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/0001-modutils-check-ELF-header-before-calling-finit_module.patch

.include "../../mk/bsd.prefs.mk"

do-configure:
	${RM} -rf ${BLDPRE}
	cd ${BLDDIR} &&  ${GMAKE} distclean -j${MAKE_JOBS}
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
	cd ${BLDDIR} &&  ${GMAKE} defconfig -j${MAKE_JOBS}
.else
	cd ${BLDDIR} &&  ${GMAKE} defconfig -j${MAKE_JOBS}
.endif

#	cd ${BLDDIR} &&  sed 's/# CONFIG_STATIC is not set/CONFIG_STATIC=y/' -i .config

# Copying kernel modules is needed if the keyboard/USB/filesystem/etc drivers are compiled as modules
# Otherwise it would be impossible to load the rootfs or unlock (type in) the encrypted root password
#		/lib/modules/${KVER}/kernel/drivers/usb/{core,common,host,storage} \
do-build:
	${MKDIR} -pv ${BLDPRE}
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && ${GMAKE} install -j${MAKE_JOBS}
	cd ${BLDDIR} && ${RM} -v _install/linuxrc # Used when booting in 'RAM dist' mode
	cd ${BLDDIR}/_install && gstrip -g bin/busybox
	cd ${BLDDIR}/_install && ${CP} -av ${FILESDIR}/ramfs/* .
	cd ${BLDDIR}/_install && mknod -m 600 dev/console c 5 1
	cd ${BLDDIR}/_install && mknod -m 666 dev/null c 1 3
	${MKDIR} -pv ${BLDDIR}/_install${PREFIX}/native/
	cd ${BLDDIR}/_install${PREFIX}/native/ && ${LN} -sfv ../../etc .
	cd ${BLDDIR}/_install${PREFIX}/native/ && ${LN} -sfv ../../lib .
	cd ${BLDDIR}/_install${PREFIX}/native/ && ${LN} -sfv ../../lib64 .
	cd ${BLDDIR}/_install${PREFIX}/native/ && ${LN} -sfv ../../lib32 .
	cd ${BLDDIR}/_install${PREFIX}/native/ && ${LN} -sfv ../../usr .
	cd ${BLDDIR}/_install/ && ${LN} -sfv ${PREFIX} pkg
	cd ${BLDDIR}/_install${PREFIX}/ && ${LN} -sfv ../etc .
	cd ${BLDDIR}/_install${PREFIX}/ && ${LN} -sfv ../lib .
	cd ${BLDDIR}/_install${PREFIX}/ && ${LN} -sfv ../lib64 .
	cd ${BLDDIR}/_install${PREFIX}/ && ${LN} -sfv ../lib32 .
	cd ${BLDDIR}/_install/lib64 && ${CP} -av ${PREFIX}/native/lib64/* .
	cd ${BLDDIR}/_install/lib && ${CP} -av ${PREFIX}/native/lib/ld-* .
	cd ${BLDDIR}/_install/lib32 && ${CP} -av ${PREFIX}/native/lib32/ld-* .
	cd ${BLDDIR}/_install/lib && ${CP} -av ${PREFIX}/native/lib/lib?-2.31.so .
	cd ${BLDDIR}/_install/lib && ${CP} -av ${PREFIX}/native/lib/lib?.so.6 .
	cd ${BLDDIR}/_install/lib && ${CP} -av ${PREFIX}/native/lib/libresolv* .
	cd ${BLDDIR}/_install/sbin && ${CP} -v --remove-destination ${PREFIX}/native/sbin/blkid .
	${MKDIR} -pv ${BLDDIR}/_install/usr/lib/
	cd ${BLDDIR}/_install/usr/lib && ${CP} -av ${PREFIX}/native/usr/lib/libblkid*so* .
	cd ${BLDDIR}/_install/sbin && ${CP} -v --remove-destination ${PREFIX}/sbin/udev* .
	cd ${BLDDIR}/_install/lib && ${CP} -av ${PREFIX}/lib/libselinux.so* .
	cd ${BLDDIR}/_install/lib && ${CP} -av ${PREFIX}/lib/libkmod.so* .
	cd ${BLDDIR}/_install/lib && ${CP} -av ${PREFIX}/lib/libzstd.so* .
	cd ${BLDDIR}/_install/lib && ${CP} -av ${PREFIX}/lib/liblzma.so* .
	cd ${BLDDIR}/_install/lib && ${CP} -av ${PREFIX}/lib/libz.so* .
	cd ${BLDDIR}/_install/lib && ${CP} -av ${PREFIX}/native/lib/libpthread* .
	cd ${BLDDIR}/_install/lib && ${CP} -av ${PREFIX}/lib/libpcre2-8.so* .
	cd ${BLDDIR}/_install/lib && ${CP} -av ${PREFIX}/native/lib/libdl* .
	cd ${BLDDIR}/_install/bin && ${CP} -v --remove-destination ${PREFIX}/bin/kmod .
	cd ${BLDDIR}/_install/sbin && ${CP} -av ${PREFIX}/sbin/{depmod,insmod,lsmod,modinfo,modprobe,rmmod} .
	cd ${BLDDIR}/_install/bin && ${CP} -v --remove-destination ${PREFIX}/bin/killall .
	cd ${BLDDIR}/_install/lib && ${CP} -av ${PREFIX}/lib/libgetopt.so* .
	cd ${BLDDIR}/_install/sbin && ${CP} -v --remove-destination ${PREFIX}/sbin/dmsetup .
	cd ${BLDDIR}/_install/lib && ${CP} -av ${PREFIX}/lib/libdevmapper.so* .
	cd ${BLDDIR}/_install/lib && ${CP} -av ${PREFIX}/lib/libudev.so* .
	cd ${BLDDIR}/_install/sbin && ${CP} -v --remove-destination ${PREFIX}/sbin/cryptsetup .
	cd ${BLDDIR}/_install/lib && ${CP} -av ${PREFIX}/lib/libcryptsetup.so* .
	cd ${BLDDIR}/_install/lib && ${CP} -av ${PREFIX}/lib/libssl.so* .
	cd ${BLDDIR}/_install/lib && ${CP} -av ${PREFIX}/lib/libcrypto.so* .
	cd ${BLDDIR}/_install/lib && ${CP} -av ${PREFIX}/lib/libjson-c.so* .
	cd ${BLDDIR}/_install/lib && ${CP} -av ${PREFIX}/lib/libpopt.so* .
	cd ${BLDDIR}/_install/lib && ${CP} -av ${PREFIX}/lib/libuuid.so* .
	cd ${BLDDIR}/_install/sbin && ${CP} -v --remove-destination ${FILESDIR}/pmount .
	cd ${BLDDIR}/_install/sbin && ${CP} -v --remove-destination ${FILESDIR}/pumount .
	${FIND} ${PREFIX}/native/lib/modules/${KVER}/kernel/{crypto,fs,lib} \
		${PREFIX}/native/lib/modules/${KVER}/kernel/drivers/{block,ata,nvme,md,firewire} \
		${PREFIX}/native/lib/modules/${KVER}/kernel/drivers/{scsi,message,pcmcia,virtio} \
		${PREFIX}/native/lib/modules/${KVER}/kernel/drivers/usb/{core,common,host,storage} \
		-type f 2> /dev/null | gcpio --make-directories -p --quiet ${BLDDIR}/_install
	${CP} ${PREFIX}/native/lib/modules/${KVER}/modules.{builtin,order} ${BLDDIR}/_install/lib/modules/${KVER}/
	depmod -b ${BLDDIR}/_install ${KVER}
	cd ${BLDDIR}/_install && gfind . | gcpio -R root:root -H newc -o | xz -9 --check=none > ../ramfs.cpio.xz 
	${MKDIR} -pv ${BLDDIR}/microcode/kernel/x86/microcode
	xzcat ${PREFIX}/native/lib/firmware/amd-ucode/microcode_amd*.bin.xz > ${BLDDIR}/microcode/kernel/x86/microcode/AuthenticAMD.bin
	xzcat ${PREFIX}/native/lib/firmware/intel-ucode/* > ${BLDDIR}/microcode/kernel/x86/microcode/GenuineIntel.bin
	cd ${BLDDIR}/microcode && find . | gcpio -o -H newc --quiet > ../microcode.img

#	${CP} -v ${FILESDIR}/SFSID.sh ${BLDDIR}/_install/etc/
#	cd ${BLDDIR}/_install/lib && gtar -xvf ${FILESDIR}/firmware.tar 
#	${CP} -av ${FILESDIR}/firmware ${BLDDIR}/_install/lib/
#	${FIND} /lib/modules/${KVER}/kernel/{crypto,fs,lib,net}                    \
#		/lib/modules/${KVER}/kernel/drivers/{block,ata,hid,input,md,firewire,net} \
#		/lib/modules/${KVER}/kernel/drivers/{scsi,message,pcmcia,virtio,usb}   \

#		/lib/modules/${KVER}/kernel/drivers/usb/{core,common,host,storage} \

do-install:
	${MKDIR} -v ${DSTPRE}/boot/
	${CAT} ${BLDDIR}/microcode.img ${BLDDIR}/ramfs.cpio.xz > ${DSTPRE}/boot/${PKGNAME}

.include "../../mk/bsd.pkg.mk"
