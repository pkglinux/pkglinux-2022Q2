# $NetBSD$

GITHUB_PROJECT=	libnfs
GITHUB_TAG=	refs/tags/libnfs-5.0.3
DISTNAME=	libnfs-5.0.3
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=sahlberg/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/sahlberg/libnfs/
COMMENT=	client library for accessing NFS shares over a network
LICENSE=	modified-bsd

WRKSRC=		${WRKDIR}/libnfs-libnfs-5.0.3
USE_CMAKE=	yes
USE_TOOLS+=	pkg-config

PKGCONFIG_OVERRIDE+=	libnfs.pc.in

CMAKE_ARGS+=	-DENABLE_UTILS=ON

post-install:
	chmod +x ${DESTDIR}${PREFIX}/bin/nfs-*

.include "../../mk/bsd.pkg.mk"
