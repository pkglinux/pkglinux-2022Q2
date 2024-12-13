# $NetBSD$

GITHUB_TAG=	refs/tags/v${PKGVERSION_NOREV}
DISTNAME=	rimage-1.6
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=thesofproject/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/thesofproject/rimage/
COMMENT=	DSP firmware image creation and signing tool
LICENSE=	3-clause-bsd

USE_CMAKE=	yes
USE_LANGUAGES=	c
GCC_REQD+=	7

WRKSRC=		${WRKDIR}/${DISTNAME}

post-extract:
	cd ${WRKSRC} && cp -av ${FILESDIR}/tomlc99/* tomlc99


.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
