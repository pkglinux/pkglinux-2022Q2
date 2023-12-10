# $NetBSD$

GITHUB_PROJECT=	glslang
GITHUB_TAG=	refs/tags/13.1.1
DISTNAME=	13.1.1
PKGNAME=	${GITHUB_PROJECT}-${DISTNAME}
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=KhronosGroup/}
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/KhronosGroup/glslang/
COMMENT=	An OpenGL GLSL and OpenGL|ES GLSL (ESSL) front-end
LICENSE=	3-clause-bsd

WRKSRC=		${WRKDIR}/glslang-13.1.1
USE_CMAKE=	yes
USE_LANGUAGES=	c c++
GCC_REQD+=	9

CMAKE_ARGS+=	-DENABLE_OPT=0

.include "../../mk/pthread.buildlink3.mk"
.include "../../lang/python/tool.mk"
.include "../../devel/bison/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
