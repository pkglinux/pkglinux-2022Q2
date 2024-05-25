# $NetBSD: Makefile,v 1.2 2022/01/11 $

PKGNAME=	pkgstrap-2022Q2
CATEGORIES=	native

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.pkgtop.org/
COMMENT=	Meta-package for linux native tool chain

META_PACKAGE=	yes

.include "../../mk/bsd.prefs.mk"

DEPENDS+=	genfstab-[0-9]*:../../native/genfstab
DEPENDS+=	mkshadow-[0-9]*:../../native/mkshadow
DEPENDS+=	native-glibc-[0-9]*:../../native/glibc
.if empty(USE_CROSS_COMPILE:M[yY][eE][sS])
DEPENDS+=	native-glibc-m32-[0-9]*:../../native/glibc-m32
.endif


DEPENDS+=	zlib-[0-9]*:../../devel/zlib
DEPENDS+=	bzip2-[0-9]*:../../archivers/bzip2
DEPENDS+=	xz-[0-9]*:../../archivers/xz
DEPENDS+=	file-[0-9]*:../../sysutils/file
DEPENDS+=	readline-[0-9]*:../../devel/readline
DEPENDS+=	attr-[0-9]*:../../sysutils/attr
DEPENDS+=	acl-[0-9]*:../../linux/acl
DEPENDS+=	native-shadow-[0-9]*:../../native/shadow
DEPENDS+=	libcap-[0-9]*:../../sysutils/libcap
DEPENDS+=	ncurses-[0-9]*:../../devel/ncurses
DEPENDS+=	ncursesw-[0-9]*:../../devel/ncursesw
DEPENDS+=	gsed-[0-9]*:../../textproc/gsed
DEPENDS+=	grep-[0-9]*:../../textproc/grep
DEPENDS+=	bash-[0-9]*:../../shells/bash
DEPENDS+=	inetutils-[0-9]*:../../net/inetutils
DEPENDS+=	coreutils-[0-9]*:../../sysutils/coreutils
DEPENDS+=	gawk-[0-9]*:../../lang/gawk
DEPENDS+=	findutils-[0-9]*:../../sysutils/findutils
DEPENDS+=	gzip-[0-9]*:../../archivers/gzip
DEPENDS+=	zstd-[0-9]*:../../archivers/zstd
DEPENDS+=	gtar-[0-9]*:../../archivers/gtar

DEPENDS+=	pkg_install-[0-9]*:../../pkgtools/pkg_install
DEPENDS+=	pkgin-[0-9]*:../../pkgtools/pkgin

.include "../../mk/bsd.pkg.mk"
