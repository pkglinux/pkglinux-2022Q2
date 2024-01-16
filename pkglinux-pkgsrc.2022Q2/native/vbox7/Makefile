# $NetBSD$

DISTNAME=	VirtualBox-7.0-7.0.12_159484_fedora35-1.x86_64
PKGNAME=	VirtualBox-7.0-7.0.12
CATEGORIES=	native
MASTER_SITES=	https://download.virtualbox.org/virtualbox/7.0.12/
DISTFILES=	VirtualBox-7.0-7.0.12_159484_fedora35-1.x86_64.rpm
COMMENT=	general-purpose full virtualizer for x86 hardware

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
	${CP} -av ${WRKDIR}/usr ${DSTPRE}/

.include "../../mk/bsd.pkg.mk"
