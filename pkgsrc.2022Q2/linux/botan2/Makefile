# $NetBSD$

DISTNAME=	Botan-2.19.2
CATEGORIES=	linux
MASTER_SITES=	https://botan.randombit.net/releases/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://botan.randombit.net/releases/
COMMENT=	C++ cryptography library
LICENSE=	modified-bsd

USE_TOOLS+=	pkg-config gmake gsed
USE_LANGUAGES=	c++

PKGCONFIG_OVERRIDE+=	src/build-data/botan.pc.in

pre-build:
	cd ${WRKSRC} && sed -i 's:/usr/local:${PREFIX}:g' configure.py
	cd ${WRKSRC} && ./configure.py

.include "../../mk/bsd.pkg.mk"
