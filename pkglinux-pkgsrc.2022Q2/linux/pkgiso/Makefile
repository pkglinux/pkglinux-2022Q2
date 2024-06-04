# $NetBSD: Makefile,v 1.2 2021/08/11 $

PKGNAME=	pkgiso-2022Q2
CATEGORIES=	linux

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.pkgtop.org/
COMMENT=	Meta-package for the PKGtOP Linux desktop environment

META_PACKAGE=	yes

.include "../../mk/bsd.prefs.mk"

DEPENDS+=	bootscripts-[0-9]*:../../native/bootscripts
DEPENDS+=	startups-[0-9]*:../../native/startups
DEPENDS+=	mkshadow-[0-9]*:../../native/mkshadow
DEPENDS+=	native-glibc-[0-9]*:../../native/glibc
DEPENDS+=	native-linux-kernel-[0-9]*:../../native/kernel
#DEPENDS+=	firmware-[0-9]*:../../native/firmware
DEPENDS+=	initramfs-[0-9]*:../../native/initramfs
.if empty(USE_CROSS_COMPILE:M[yY][eE][sS])
DEPENDS+=	native-glibc-m32-[0-9]*:../../native/glibc-m32
.endif

DEPENDS+=	nawk-[0-9]*:../../lang/nawk
DEPENDS+=	nbsed-[0-9]*:../../textproc/nbsed
DEPENDS+=	pkgin-[0-9]*:../../pkgtools/pkgin

DEPENDS+=	man-pages-[0-9]*:../../native/man-pages
DEPENDS+=	zlib-[0-9]*:../../devel/zlib
DEPENDS+=	bzip2-[0-9]*:../../archivers/bzip2
DEPENDS+=	xz-[0-9]*:../../archivers/xz
DEPENDS+=	file-[0-9]*:../../sysutils/file
DEPENDS+=	readline-[0-9]*:../../devel/readline
DEPENDS+=	bc-[0-9]*:../../math/bc
DEPENDS+=	binutils-[0-9]*:../../devel/binutils
DEPENDS+=	attr-[0-9]*:../../sysutils/attr
DEPENDS+=	acl-[0-9]*:../../linux/acl
DEPENDS+=	native-shadow-[0-9]*:../../native/shadow
DEPENDS+=	ncurses-[0-9]*:../../devel/ncurses
DEPENDS+=	ncursesw-[0-9]*:../../devel/ncursesw
DEPENDS+=	libcap-[0-9]*:../../sysutils/libcap
DEPENDS+=	gsed-[0-9]*:../../textproc/gsed
DEPENDS+=	psmisc-[0-9]*:../../sysutils/psmisc
DEPENDS+=	iana-etc-[0-9]*:../../native/iana-etc
DEPENDS+=	grep-[0-9]*:../../textproc/grep
DEPENDS+=	bash-[0-9]*:../../shells/bash
DEPENDS+=	dialog-[0-9]*:../../misc/dialog
DEPENDS+=	inetutils-[0-9]*:../../net/inetutils
.if empty(USE_CROSS_COMPILE:M[yY][eE][sS])
DEPENDS+=	perl-[0-9]*:../../lang/perl5
DEPENDS+=	p5-XML-Parser-[0-9]*:../../textproc/p5-XML-Parser
.endif
DEPENDS+=	kmod-[0-9]*:../../linux/kmod
DEPENDS+=	gettext-[0-9]*:../../devel/gettext
DEPENDS+=	libffi-[0-9]*:../../devel/libffi
DEPENDS+=	elfutils-[0-9]*:../../linux/elfutils
DEPENDS+=	openssl-[0-9]*:../../security/openssl
.if empty(USE_CROSS_COMPILE:M[yY][eE][sS])
DEPENDS+=	python39-[0-9]*:../../lang/python39
.endif
DEPENDS+=	coreutils-[0-9]*:../../sysutils/coreutils
DEPENDS+=	diffutils-[0-9]*:../../devel/diffutils
DEPENDS+=	gawk-[0-9]*:../../lang/gawk
DEPENDS+=	groff-[0-9]*:../../native/groff
DEPENDS+=	findutils-[0-9]*:../../sysutils/findutils
.if empty(USE_CROSS_COMPILE:M[yY][eE][sS])
DEPENDS+=	grub2-[0-9]*:../../sysutils/grub2
DEPENDS+=	grub-efi-[0-9]*:../../linux/grub-efi
.endif
DEPENDS+=	less-[0-9]*:../../misc/less
DEPENDS+=	gzip-[0-9]*:../../archivers/gzip
DEPENDS+=	zstd-[0-9]*:../../archivers/zstd
DEPENDS+=	iproute2-[0-9]*:../../native/iproute2
DEPENDS+=	native-kbd-[0-9]*:../../native/kbd
DEPENDS+=	libpipeline-[0-9]*:../../linux/libpipeline
DEPENDS+=	gmake-[0-9]*:../../devel/gmake
DEPENDS+=	patch-[0-9]*:../../devel/patch
DEPENDS+=	man-db-[0-9]*:../../linux/man-db
DEPENDS+=	gtar-[0-9]*:../../archivers/gtar
DEPENDS+=	gtexinfo-[0-9]*:../../devel/gtexinfo
DEPENDS+=	vim-[0-9]*:../../editors/vim
DEPENDS+=	nano-[0-9]*:../../editors/nano
DEPENDS+=	procps-ng-[0-9]*:../../linux/procps-ng
DEPENDS+=	util-linux-[0-9]*:../../native/util-linux
DEPENDS+=	e2fsprogs-[0-9]*:../../native/e2fsprogs
DEPENDS+=	sysklogd-[0-9]*:../../native/sysklogd
#DEPENDS+=	sysvinit-[0-9]*:../../native/sysvinit
DEPENDS+=	openrc-[0-9]*:../../native/openrc
DEPENDS+=	eudev-[0-9]*:../../linux/eudev
DEPENDS+=	rpcsvc-proto-[0-9]*:../../native/rpcsvc-proto
DEPENDS+=	libtirpc-[0-9]*:../../linux/libtirpc
DEPENDS+=	dhcpcd-[0-9]*:../../net/dhcpcd
DEPENDS+=	openssh-[0-9]*:../../security/openssh
DEPENDS+=	ntfsprogs-[0-9]*:../../sysutils/ntfsprogs
DEPENDS+=	dosfstools-[0-9]*:../../sysutils/dosfstools
DEPENDS+=	gcpio-[0-9]*:../../archivers/gcpio
DEPENDS+=	bsdtar-[0-9]*:../../archivers/bsdtar
DEPENDS+=	pigz-[0-9]*:../../linux/pigz
DEPENDS+=	pixz-[0-9]*:../../linux/pixz
DEPENDS+=	bind-[0-9]*:../../net/bind916
DEPENDS+=	chkconfig-[0-9]*:../../native/chkconfig
DEPENDS+=	rcorder-[0-9]*:../../pkgtools/rcorder
DEPENDS+=	rc.subr-[0-9]*:../../pkgtools/rc.subr
DEPENDS+=	rc.d-boot-[0-9]*:../../pkgtools/rc.d-boot
DEPENDS+=	genfstab-[0-9]*:../../native/genfstab
DEPENDS+=	squashfs-tools-ng-[0-9]*:../../linux/squashfs-tools-ng
DEPENDS+=	squashfs-[0-9]*:../../linux/squashfs
DEPENDS+=	mtools-[0-9]*:../../sysutils/mtools
.if empty(USE_CROSS_COMPILE:M[yY][eE][sS])
DEPENDS+=	libisoburn-[0-9]*:../../sysutils/libisoburn
DEPENDS+=	cdrtools-[0-9]*:../../sysutils/cdrtools
DEPENDS+=	syslinux-[0-9]*:../../native/syslinux
#DEPENDS+=	NetworkManager-[0-9]*:../../linux/NetworkManager
DEPENDS+=	iw-[0-9]*:../../linux/iw
DEPENDS+=	wireless-tools-[0-9]*:../../linux/wireless-tools
.endif
DEPENDS+=	rsync-[0-9]*:../../net/rsync
DEPENDS+=	zsync-[0-9]*:../../net/zsync

.include "../../mk/bsd.pkg.mk"
