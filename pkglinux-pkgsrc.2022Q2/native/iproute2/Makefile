# $NetBSD$

DISTNAME=	iproute2-5.5.0
CATEGORIES=	native
MASTER_SITES=	https://www.kernel.org/pub/linux/utils/net/iproute2/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.kernel.org/pub/linux/utils/net/iproute2/
COMMENT=	set of utilities for Linux networking
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

USE_LANGUAGES=		c c++

#NO_BUILD=	yes
NO_CONFIGURE=	yes
GNU_CONFIGURE=	no
USE_TOOLS+=	gmake pkg-config

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
#MAKE_ENV+=	SBINDIR=${BLDPRE}/sbin
#MAKE_ENV+=	CONFDIR=${BLDPRE}/etc/iproute2
#MAKE_ENV+=	NETNS_RUN_DIR=${BLDPRE}/var/run/netns
#MAKE_ENV+=	NETNS_ETC_DIR=${BLDPRE}/etc/netns
#MAKE_ENV+=	DATADIR=${BLDPRE}/share
#MAKE_ENV+=	HDRDIR=${BLDPRE}/usr/include/iproute2
#MAKE_ENV+=	DOCDIR=${BLDPRE}/share/doc/${PKGNAME}
#MAKE_ENV+=	MANDIR=${BLDPRE}/man
#MAKE_ENV+=	KERNEL_INCLUDE=/usr/include
#MAKE_ENV+=	BASH_COMPDIR?=${BLDPRE}/bash-completion/completions

.include "../../mk/bsd.prefs.mk"
post-extract:
	sed -i /ARPD/d ${WRKSRC}/Makefile
	rm -fv ${WRKSRC}/man/man8/arpd.8
	sed -i 's/.m_ipt.o//' ${WRKSRC}/tc/Makefile
	${MKDIR} -v ${BLDPRE}
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
	rm -rf ${WRKSRC}/testsuite
.endif

.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
#GNU_CONFIGURE=		no
CONFIGURE_ARGS+=		--host=${MACHINE_GNU_PLATFORM}
CONFIGURE_ARGS+=		--with-sysroot=${TOOLS_CROSS_DESTDIR}
CONFIGURE_ENV+=		BUILD_CC=${PREFIX}/gcc6/bin/gcc
CONFIGURE_ENV+=		CC_FOR_BUILD=${PREFIX}/gcc6/bin/gcc
MAKE_ENV+=		HOSTCC=${PREFIX}/gcc6/bin/gcc
MAKE_ENV+= 		PATH=${TOOLDIR}/bin:$$PATH
PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.endif

do-build:
	cd ${BLDDIR} && ${SETENV} ${MAKE_ENV} ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${SETENV} ${MAKE_ENV} ${GMAKE} DESTDIR=${BLDPRE} install-strip || ${SETENV} ${MAKE_ENV} ${GMAKE} DESTDIR=${BLDPRE} install)

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.include "../../mk/bsd.pkg.mk"
