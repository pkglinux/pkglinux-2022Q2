# $NetBSD$

DISTNAME=	acl-2.2.53
PKGNAME=	native-acl-2.2.53
CATEGORIES=	native
MASTER_SITES=	http://download.savannah.gnu.org/releases/acl/

MAINTAINER=	use pkgsrc-users@NetBSD.org
HOMEPAGE=	http://download.savannah.gnu.org/releases/acl/
COMMENT=	Access control list package
LICENSE=	gnu-gpl-v2


#USE_LIBTOOL=	yes
GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config gmake gsed

#TOOLS_PLATFORM.awk?=		/pkg/bin/nawk
#TOOLS_PLATFORM.sed?=		/pkg/bin/nbsed
TOOLS_PLATFORM.awk?=		/pkg/bin/gawk
TOOLS_PLATFORM.sed=		/pkg/bin/gsed

PKGCONFIG_OVERRIDE+=	libacl.pc.in

ONLY_FOR_PLATFORM=	Linux-*-* # Uses Linux kernel headers

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

#GNU_CONFIGURE=		no
#NO_BUILD=		yes
#NO_CONFIGURE=		yes
#GNU_CONFIGURE_PREDIR=	${PREFIX}
PREDIR=			${PREFIX}/native
BLDDIR=			${WRKDIR}/build
BLDPRE=			${BLDDIR}${PREDIR}
DSTPRE=			${DESTDIR}${PREDIR}

post-extract:
	${MKDIR} -v ${BLDPRE}

do-configure:
	cd ${BLDDIR} && \
	${WRKSRC}/configure			\
		--prefix=/usr			\
		--bindir=/bin			\
		--disable-static		\
		--libexecdir=/usr/lib		\
		--docdir=/usr/share/doc/${DISTNAME}

do-build:
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${GMAKE} DESTDIR=${BLDPRE} install-strip || ${GMAKE} DESTDIR=${BLDPRE} install)
	${MKDIR} -pv ${BLDPRE}/lib/
	cd ${BLDPRE}/lib/ && ${LN} -sfv ../usr/lib/libacl.so* .

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.include "../../mk/bsd.pkg.mk"
