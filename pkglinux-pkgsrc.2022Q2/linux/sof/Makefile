# $NetBSD$

GITHUB_TAG=	refs/tags/v${PKGVERSION_NOREV}
DISTNAME=	sof-2.11.2
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=thesofproject/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/thesofproject/sof/
COMMENT=	Sound Open Firmware
LICENSE=	3-clause-bsd

USE_CMAKE=	yes
USE_LANGUAGES=	c c++

USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config cmake gmake
#GCC_REQD+=	7

WRKSRC=		${WRKDIR}/${DISTNAME}

CMAKE_ARGS+=	-DRIMAGE_COMMAND=${PREFIX}/bin/rimage
CMAKE_ARGS+=	-DRIMAGE_INATALL_DIR=${PREFIX}/bin/
#CMAKE_ARGS+=	-DSIGNING_KEY=/path/to/signing/key.pem
#cmake -B build -G <Ninja/Makefile> -DRIMAGE_INSTALL_DIR="path/where/rimage/executable/is" -DSIGNING_KEY="path/to/key"

do-build:
	${MKDIR} ${WRKDIR}/sof-build
	cd ${WRKSRC} ; \
	${CMAKE} -B ${WRKDIR}/sof-build -G Makefile ${CMAKE_ARGS} ; \
	cd ${WRKDIR}/sof-build ; \
	${GMAKE}

.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
