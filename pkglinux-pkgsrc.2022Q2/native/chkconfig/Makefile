# $NetBSD$

DISTNAME=	chkconfig-1.25
CATEGORIES=	linux
MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://codeload.github.com/fedora-sysv/chkconfig
COMMENT=	Specify in which runlevel to start a selected service
LICENSE=	gnu-gpl-v2

WRKSRC=		${WRKDIR}/${DISTNAME}
USE_PKGLOCALEDIR=	yes

NLY_FOR_PLATFORM=	Linux-*-*

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

USE_TOOLS+=	gmake pkg-config
#TOOLS_PLATFORM.msgfmt=
#TOOLS_PLATFORM.gmake=

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

GNU_CONFIGURE=		no
#NO_BUILD=		yes
NO_CONFIGURE=		yes
#GNU_CONFIGURE_PREDIR=	${PREFIX}
PREDIR=			${PREFIX}/native
BLDDIR=			${WRKSRC}
BLDPRE=			${BLDDIR}${PREDIR}
DSTPRE=			${DESTDIR}${PREDIR}

post-extract:
	${MKDIR} -v ${BLDPRE}

post-patch:
	cd ${WRKSRC} && \
	gsed -e 's|#define RUNLEVELS "/etc"|#define RUNLEVELS "${PREFIX}/native/etc/rc.d"|g' -i leveldb.h

do-build:
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${GMAKE} DESTDIR=${BLDPRE} install-strip || ${GMAKE} DESTDIR=${BLDPRE} install)

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

#post-install:
#	lndir.sh -l sf ${PREFIX}/native/usr/sbin ${PREFIX}/native/sbin ${DESTDIR}

#	cd ${DSTPRE}/usr/ && ${RM} \
#		sbin/alternatives \
#		sbin/ntsysv \
#		sbin/update-alternatives \
#		share/man/man8/alternatives.8 \
#		share/man/man8/ntsysv.8 \
#		share/man/man8/update-alternatives.8

#MAKE_ENV+=	LDFLAGS+=`pkg-config --libs popt`
#MAKE_ENV+=	LDFLAGS+=`pkg-config --libs libnewt`
#MAKE_ENV+=	LDFLAGS+=`pkg-config --libs libselinux`
#MAKE_ENV+=	LDFLAGS+=`pkg-config --libs libsepol`
#MAKE_ENV+=	LDFLAGS+=-L${PREFIX}/lib

.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
CFLAGS+=	--shared -fPIC
PLIST_SRC=
GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.include "../../mk/dlopen.buildlink3.mk"
.endif

.include "../../linux/selinux-libselinux/buildlink3.mk"
.include "../../linux/selinux-libsepol/buildlink3.mk"
#.include "../../linux/selinux-libsemanage/buildlink3.mk"
#.include "../../linux/audit/buildlink3.mk"
#.include "../../linux/semodule-utils/buildlink3.mk"
.include "../../devel/popt/buildlink3.mk"
#.include "../../linux/newt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
