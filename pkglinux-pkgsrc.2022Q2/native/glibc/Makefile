# $NetBSD$

GLIBCNAME=	glibc
GLIBCVERSION=	2.31
#GLIBCVERSION=	2.34
DISTNAME=	${GLIBCNAME}-${GLIBCVERSION}
CATEGORY=	native
CATEGORIES=	${CATEGORY}
MASTER_SITES=	http://ftp.gnu.org/gnu/glibc/
EXTRACT_SUFX=	.tar.xz
PKGNAME=	${CATEGORY}-${GLIBCNAME}-${GLIBCVERSION}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://ftp.gnu.org/gnu/glibc/
COMMENT=	GNU C library
LICENSE=	gnu-gpl-v2 AND gnu-lgpl-v2.1

ONLY_FOR_PLATFORM=	Linux-*-*

USE_CWRAPPERS=		no
USE_LANGUAGES=		c c++
#USE_NATIVE_GCC=		yes
##USE_NATIVE_GCC=		no
#USE_PKGSRC_GCC=		no	
##USE_PKGSRC_GCC=		yes
#GCC_REQD+=		6
#GCC_REQD+=		8

MKPIE_SUPPORTED=	no
PKGSRC_MKPIE=		no
PKGSRC_USE_FORTIFY=	no
PKGSRC_USE_SSP=		no
#SSP_SUPPORTED=		yes

#STACK_CHECK_SUPPORTED=	no
#PKGSRC_USE_STACK_CHECKD=	no

USE_TOOLS+=		gmake makeinfo sed:run tar:build perl

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

#HAS_CONFIGURE=		no
#NO_BUILD=		yes
#NO_CONFIGURE=		yes
#GNU_CONFIGURE=		no
#GNU_CONFIGURE_PREFIX=	${PREFIX}/native
PREDIR=			${PREFIX}/native
BLDDIR=			${WRKDIR}/build
BLDPRE=			${BLDDIR}${PREDIR}
DSTPRE=			${DESTDIR}${PREDIR}
#ZONEINFO=		${BLDPRE}/share/zoneinfo
ZONEINFO=		${BLDPRE}/usr/share/zoneinfo
ZIC=			zic
#ZIC=			/usr/sbin/zic
#ZIC=			${PREDIR}/sbin/zic
#ZIC=			${BLDPRE}/sbin/zic

# fix a security problem identified upstream for glibc-2.34
#	gsed -e '/NOTIFY_REMOVED)/s/)/ \&\& data.attr != NULL)/' \
#	    -i ${WRKSRC}/sysdeps/unix/sysv/linux/mq_notify.c

#	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/elf_get_dynamic_info.patch
#	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/elf__get_dynamic_info_h.patch

#CFLAGS=
#CPPFLAGS=
#CXXFLAGS=
#LDFLAGS=

.include "../../mk/bsd.prefs.mk"

#	gsed -e '/NOTIFY_REMOVED)/s/)/ \&\& data.attr != NULL)/' \
#	    -i ${WRKSRC}/sysdeps/unix/sysv/linux/mq_notify.c
post-extract:
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/glibc-2.31-fhs-1.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/perlnever.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/elf__get_dynamic_info_h.patch
	${MKDIR} -v ${BLDPRE}
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
	cd ${WRKSRC} && cp -v timezone/Makefile{,.orig} && \
	sed 's/\\$$(pwd)/`pwd`/' timezone/Makefile.orig > timezone/Makefile
.endif
# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=31798
.if !empty(MACHINE_GNU_PLATFORM:Marm*-*-*-gnueabi*)
	cd ${WRKSRC} && ${ECHO} "int raise(int a){return 0;}" >> elf/dl-open.c
.endif

.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
MAKE_ENV+= PATH=/usr/bin:${TOOLDIR}/bin:$$PATH
CONFIG_ENV+=		SED=${PREFIX}/bin/gsed
CONFIG_ENV+=		PWD_COMMAND=${PREFIX}/bin/gpwd
CONFIG_ENV+=		BUILD_CC=${PREFIX}/gcc6/bin/gcc
CONFIG_ENV+=		CC_FOR_BUILD=${PREFIX}/gcc6/bin/gcc
CONFIG_ENV+=		CXX_FOR_BUILD=${PREFIX}/gcc6/bin/g++
CONFIG_ENV+=		GCC_FOR_BUILD=${PREFIX}/gcc6/bin/gcc
CONFIG_ENV+=		AR_FOR_BUILD=${PREFIX}/bin/gar
CONFIG_ENV+=		AS_FOR_BUILD=${PREFIX}/bin/gas
CONFIG_ENV+=		LD_FOR_BUILD=${PREFIX}/bin/gld
CONFIG_ENV+=		NM_FOR_BUILD=${PREFIX}/bin/gnm
.else
CONFIG_ENV+=		CC="/pkg/gcc6/bin/gcc -specs=${FILESDIR}/gcc6.specs -fno-pic -fno-PIC -no-pie -fno-pie -fno-PIE -isystem /pkg/lib/gcc/x86_64-unknown-linux/6.5.0/include -isystem /usr/include"
.endif
CONFIG_ARGS+=		--prefix=${PREDIR}/usr
CONFIG_ARGS+=		--disable-werror
CONFIG_ARGS+=		--enable-kernel=3.2
CONFIG_ARGS+=		--enable-stack-protector=strong
CONFIG_ARGS+=		--enable-shared
CONFIG_ARGS+=		libc_cv_slibdir=${PREDIR}/lib
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
.if !empty(CROSS_TARGET:Msparc-*)
CONFIG_ARGS+=		--host=${MACHINE_GNU_PLATFORM:S/sparc-/sparcv9-/}
.elif !empty(CROSS_TARGET:Msh-*)
CONFIG_ARGS+=		--host=${MACHINE_GNU_PLATFORM:S/sh-/sh4-/}
#CONFIG_ARGS+=		--disable-werror
#CONFIG_ARGS+=		--with-fp
#CONFIG_ARGS+=		--without-cvs
#CONFIG_ARGS+=		--disable-profile
#CONFIG_ARGS+=		--without-gd
#CONFIG_ARGS+=		--disable-debug
#CONFIG_ARGS+=		--disable-sanity-checks
#CONFIG_ARGS+=		--enable-obsolete-rpc
#CONFIG_ARGS+=		--with-__thread
#CONFIG_ARGS+=		--with-tls
#CONFIG_ARGS+=		--enable-add-ons=no
.else
CONFIG_ARGS+=		--host=${MACHINE_GNU_PLATFORM}
.endif
CONFIG_ARGS+=		--with-build-sysroot=${TOOLS_CROSS_DESTDIR}
.if !empty(MACHINE_GNU_PLATFORM:Marm-*-*-gnueabi)
#CONFIG_ARGS+=		libc_cv_with_fp=no
CONFIG_ARGS+=		--without-fp
.endif
.if !empty(MACHINE_GNU_PLATFORM:Marmv8-rpi4-*-gnueabihf)
#CONFIG_ARGS+=		--disable-obsolete-rpc
#CONFIG_ARGS+=		--disable-static-nss
CONFIG_ARGS+=		--enable-static
.endif
CONFIG_ARGS+=		--enable-obsolete-rpc
.endif

do-configure:
	cd ${BLDDIR} && ${SETENV} ${CONFIG_ENV} ${WRKSRC}/configure ${CONFIG_ARGS}
	gsed '/test-installation/s@$(PERL)@echo not running@' -i ${WRKSRC}/Makefile
	cd ${BLDDIR} && echo "#undef HAVE_INLINED_SYSCALLS">>config.h

.if !empty(MACHINE_GNU_PLATFORM:MXarm*)

do-build:
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
	${MKDIR} -v ${BLDPRE}/etc/
	cd ${BLDDIR} && (${GMAKE} DESTDIR=${BLDDIR} install-strip || ${GMAKE} DESTDIR=${BLDDIR} install)

.else

do-build:
	cd ${BLDDIR} && ${SETENV} ${MAKE_ENV} ${GMAKE} -j${MAKE_JOBS}
	${MKDIR} -v ${BLDPRE}/etc/
	cd ${BLDDIR} && (${SETENV} ${MAKE_ENV} ${GMAKE} DESTDIR=${BLDDIR} install-strip || ${SETENV} ${MAKE_ENV} ${GMAKE} DESTDIR=${BLDDIR} install)

.endif

post-build:
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
.if !empty(MACHINE_GNU_PLATFORM:M*64*)
	${LN} -sfv lib ${BLDPRE}/lib64
.endif
.else
	${MKDIR} -v ${BLDPRE}/lib64/
	${LN} -sfv ../lib/ld-linux-x86-64.so.2 ${BLDPRE}/lib64
	${LN} -sfv ../lib/ld-linux-x86-64.so.2 ${BLDPRE}/lib64/ld-lsb-x86-64.so.3
.endif
	${CP} -v ${WRKSRC}/nscd/nscd.conf ${BLDPRE}/etc/nscd.conf
	${MKDIR} -v ${BLDPRE}/var/cache/nscd/
	install -v -Dm644 ${WRKSRC}/nscd/nscd.tmpfiles ${BLDPRE}/usr/lib/tmpfiles.d/nscd.conf
	install -v -Dm644 ${WRKSRC}/nscd/nscd.service ${BLDPRE}/lib/systemd/system/nscd.service
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
.else
	${MKDIR} -v ${BLDPRE}/usr/lib/locale
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS} DESTDIR=${DESTDIR} localedata/install-locales
.endif
	${CP} -v ${FILESDIR}/nsswitch.conf ${BLDPRE}/etc/
	cd ${BLDDIR} && ${TAR} xf ${FILESDIR}/tzdata2021a.tar.gz
	${MKDIR} -v ${ZONEINFO}/{posix,right}
.	for _tz in etcetera southamerica northamerica europe africa antarctica  \
		asia australasia backward pacificnew systemv
		if [ -f ${BLDDIR}/${_tz} ]; then \
			cd ${BLDDIR} && \
			${ZIC} -L /dev/null   -d ${ZONEINFO}       ${_tz} && \
			${ZIC} -L /dev/null   -d ${ZONEINFO}/posix ${_tz} && \
			${ZIC} -L leapseconds -d ${ZONEINFO}/right ${_tz}; \
		fi
.	endfor
	cd ${BLDDIR} && ${CP} -v zone.tab zone1970.tab iso3166.tab ${ZONEINFO}
	cd ${BLDDIR} && ${ZIC} -d ${ZONEINFO} -p America/New_York
	${RM} -rfv ${BLDPRE}/usr/share/info/dir

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

GENERATE_PLIST+= \
  	cd ${DESTDIR}${PREFIX} && \
	${FIND} native \( -type f -o -type l \) -print | ${SORT} ;

.include "../../mk/bsd.pkg.mk"
