# $NetBSD$

GITHUB_PROJECT=	glslang
GITHUB_TAG=	refs/tags/13.1.1
DISTNAME=	13.1.1
#GITHUB_TAG=	refs/tags/11.13.0
#DISTNAME=	11.13.0
PKGNAME=	${GITHUB_PROJECT}-${DISTNAME}
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=KhronosGroup/}
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/KhronosGroup/glslang/
COMMENT=	An OpenGL GLSL and OpenGL|ES GLSL (ESSL) front-end
LICENSE=	3-clause-bsd

WRKSRC=		${WRKDIR}/glslang-${DISTNAME}
USE_CMAKE=	yes
USE_LANGUAGES=	c c++
GCC_REQD+=	9
#GCC_REQD+=	10

CMAKE_ARGS+=	-DENABLE_OPT=ON

post-extract:
	cd ${WRKSRC} && ./update_glslang_sources.py

.include "../../mk/pthread.buildlink3.mk"
.include "../../lang/python/tool.mk"
.include "../../devel/bison/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
