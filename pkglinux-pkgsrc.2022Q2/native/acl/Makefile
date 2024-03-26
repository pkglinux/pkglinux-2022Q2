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
USE_NATIVE_GCC=		yes
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

CONFIG_ARGS+=		--prefix=/usr
CONFIG_ARGS+=		--bindir=/bin
CONFIG_ARGS+=		--disable-static
CONFIG_ARGS+=		--libexecdir=/usr/lib
CONFIG_ARGS+=		--docdir=/usr/share/doc/${DISTNAME}
.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
CONFIG_ARGS+=		--host=${MACHINE_GNU_PLATFORM}
CONFIG_ARGS+=		--with-sysroot=${TOOLS_CROSS_DESTDIR}
.endif

do-configure:
	cd ${BLDDIR} && ${WRKSRC}/configure ${CONFIG_ARGS}

do-build:
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${GMAKE} DESTDIR=${BLDPRE} install-strip || ${GMAKE} DESTDIR=${BLDPRE} install)
	${MKDIR} -pv ${BLDPRE}/lib/
	cd ${BLDPRE}/lib/ && ${LN} -sfv ../usr/lib/libacl.so* .

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.include "../../sysutils/attr/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
