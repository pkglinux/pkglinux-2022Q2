# $NetBSD$

DISTNAME=	plymouth-22.02.122
CATEGORIES=	native
MASTER_SITES=	https://www.freedesktop.org/software/plymouth/releases/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	use pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.freedesktop.org/software/plymouth/releases/
COMMENT=	graphical boot animation and logger
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

PKGCONFIG_OVERRIDE+=	src/client/ply-boot-client.pc.in
PKGCONFIG_OVERRIDE+=	src/ply-splash-core.pc.in
PKGCONFIG_OVERRIDE+=	src/ply-splash-graphics.pc.in

USE_LANGUAGES=		c c++

HAS_CONFIGURE=	yes
#NO_BUILD=	yes
#NO_CONFIGURE=	yes
#GNU_CONFIGURE=	no
USE_TOOLS+=	gmake pkg-config
#USE_PKGLOCALEDIR=	yes

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

post-extract:
	${MKDIR} -v ${BLDPRE}

do-configure:
	cd ${BLDDIR} && \
	${WRKSRC}/configure	\
		--prefix=/usr	\
		--sysconfdir=/etc

do-build:
	cd ${BLDDIR} && ${GMAKE} -j${MAKE_JOBS}
	cd ${BLDDIR} && (${GMAKE} DESTDIR=${BLDPRE} install-strip || ${GMAKE} DESTDIR=${BLDPRE} install)

do-install:
	${MKDIR} -v ${DSTPRE}
	${CP} -av ${BLDPRE}/* ${DSTPRE}

.include "../../linux/eudev/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
