# $NetBSD$

DISTNAME=	wps-office-11.1.0.11711.XA-1.x86_64
PKGNAME=	wps-office-11.1.0.11711
CATEGORIES=	native
MASTER_SITES=	https://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/11711/
#MASTER_SITES=	https://wps-linux-personal.wpscdn.cn/wps/download/ep/Linux2019/11711/
DISTFILES=	wps-office-11.1.0.11711.XA-1.x86_64.rpm
COMMENT=	A Free Professional Office Solution Across All Platforms

USE_LANGUAGES=	# none

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

NO_BUILD=	yes
NO_CONFIGURE=	yes
GNU_CONFIGURE=	no

USE_TOOLS+=	rpm2pkg gsed

PREDIR=			${PREFIX}/native
DSTPRE=			${DESTDIR}${PREDIR}

do-install:
	${MKDIR} -v ${DSTPRE}/
	${CP} -av ${WRKDIR}/opt ${DSTPRE}/
	${CP} -av ${WRKDIR}/usr ${DSTPRE}/
	${CP} -av ${WRKDIR}/usr/* ${DESTDIR}${PREFIX}/

.include "../../mk/bsd.pkg.mk"
