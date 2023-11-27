# $NetBSD$

DISTNAME=	sysklogd-1.5.1
CATEGORIES=	native
MASTER_SITES=	http://www.infodrom.org/projects/sysklogd/download/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.infodrom.org/projects/sysklogd/download/
COMMENT=	Programs for logging system messages
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

USE_TOOLS+=	gmake pkgconfig gsed

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

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
	cd ${WRKSRC} && sed -i '/Error loading kernel symbols/{n;n;d}' ksym_mod.c
	cd ${WRKSRC} && sed -i 's/union wait/int/' syslogd.c
	${MKDIR} -v ${BLDPRE}

do-build:
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
	${MKDIR} -v ${BLDPRE}/etc/
	${MKDIR} -v ${BLDPRE}/sbin/
	${MKDIR} -v ${BLDPRE}/usr/sbin/
	${MKDIR} -v ${BLDPRE}/usr/bin/
	${MKDIR} -v ${BLDPRE}/usr/share/man/man5/
	${MKDIR} -v ${BLDPRE}/usr/share/man/man8/
	cd ${BLDDIR} && (\
		${GMAKE} prefix=${BLDPRE} BINDIR=${BLDPRE}/sbin DESTDIR=${BLDPRE} install-strip || \
		${GMAKE} prefix=${BLDPRE} BINDIR=${BLDPRE}/sbin DESTDIR=${BLDPRE} install)
	${CP} -v ${FILESDIR}/syslog.conf ${BLDPRE}/etc/


do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.include "../../mk/bsd.pkg.mk"
