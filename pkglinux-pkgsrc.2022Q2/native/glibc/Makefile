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
##USE_LANGUAGES=		c c++
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

#	gsed -e '/NOTIFY_REMOVED)/s/)/ \&\& data.attr != NULL)/' \
#	    -i ${WRKSRC}/sysdeps/unix/sysv/linux/mq_notify.c
post-extract:
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/glibc-2.31-fhs-1.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/perlnever.patch
	${MKDIR} -v ${BLDPRE}

#	cd ${BLDDIR} && CC="/usr/pkg/gcc6/bin/gcc -fno-pie -fno-PIE -isystem /usr/pkg/lib/gcc/x86_64-unknown-linux/6.5.0/include -isystem /usr/pkg/include" \
#	cd ${BLDDIR} && CC="/usr/pkg/gcc6/bin/gcc -isystem /usr/pkg/lib/gcc/x86_64-unknown-linux/6.5.0/include -isystem /usr/include" \
#	cd ${BLDDIR} && CFLAGS="" LDFLAGS="" CC="/usr/bin/gcc -isystem /usr/lib/gcc/x86_64-unknown-linux/6.5.0/include -isystem /usr/include -isystem /usr/pkg/include -L/usr/lib/gcc/x86_64-unknown-linux/6.5.0" \
#	cd ${BLDDIR} && CC="/usr/bin/gcc -isystem /usr/lib/gcc/x86_64-unknown-linux/6.5.0/include -isystem /usr/include" \
#	cd ${BLDDIR} && CC="cc -isystem /usr/lib/gcc/x86_64-unknown-linux/6.5.0/include -isystem /usr/include" \
#	cd ${BLDDIR} && CC="/usr/pkg/gcc6/bin/gcc -specs=${FILESDIR}/gcc6.specs -fno-pic -fno-PIC -no-pie -fno-pie -fno-PIE -isystem /usr/pkg/lib/gcc/x86_64-unknown-linux/6.5.0/include -isystem /usr/include" \
#		--with-bintuils=/usr/bin		\
#		libc_cv_ctors_header=yes		\
#		--with-headers=/usr/include		\
#	${MV} -v ${PREDIR}/include/limits.h ${PREDIR}/include/limits.h.bak
#	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
#	${MV} -v ${PREDIR}/include/limits.h.bak ${PREDIR}/include/limits.h

#		--enable-stack-protector=strong		\
#	cd ${BLDDIR} && CC="/pkg/gcc6/bin/gcc -specs=${FILESDIR}/gcc6.specs -fno-pic -fno-PIC -no-pie -fno-pie -fno-PIE -isystem /pkg/lib/gcc/x86_64-unknown-linux/6.5.0/include -isystem /usr/include" \

#--enable-shared         build shared library [default=yes if GNU ld]

do-configure:
	cd ${BLDDIR} && CC="/pkg/gcc6/bin/gcc -specs=${FILESDIR}/gcc6.specs -fno-pic -fno-PIC -no-pie -fno-pie -fno-PIE -isystem /pkg/lib/gcc/x86_64-unknown-linux/6.5.0/include -isystem /usr/include" \
	${WRKSRC}/configure				\
		--prefix=${PREDIR}/usr			\
		--disable-werror			\
		--enable-kernel=3.2			\
		--enable-stack-protector=strong		\
		--enable-shared				\
		libc_cv_slibdir=${PREDIR}/lib
	gsed '/test-installation/s@$(PERL)@echo not running@' -i ${WRKSRC}/Makefile
	cd ${BLDDIR} && echo "#undef HAVE_INLINED_SYSCALLS">>config.h

do-build:
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
	${MKDIR} -v ${BLDPRE}/etc/
	cd ${BLDDIR} && (${GMAKE} DESTDIR=${BLDDIR} install-strip || ${GMAKE} DESTDIR=${BLDDIR} install)
	${MKDIR} -v ${BLDPRE}/lib64/
	${LN} -sfv ../lib/ld-linux-x86-64.so.2 ${BLDPRE}/lib64
	${LN} -sfv ../lib/ld-linux-x86-64.so.2 ${BLDPRE}/lib64/ld-lsb-x86-64.so.3
	${CP} -v ${WRKSRC}/nscd/nscd.conf ${BLDPRE}/etc/nscd.conf
	${MKDIR} -v ${BLDPRE}/var/cache/nscd/
	install -v -Dm644 ${WRKSRC}/nscd/nscd.tmpfiles ${BLDPRE}/usr/lib/tmpfiles.d/nscd.conf
	install -v -Dm644 ${WRKSRC}/nscd/nscd.service ${BLDPRE}/lib/systemd/system/nscd.service
	${MKDIR} -v ${BLDPRE}/usr/lib/locale
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS} DESTDIR=${DESTDIR} localedata/install-locales
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

.include "../../mk/bsd.pkg.mk"
