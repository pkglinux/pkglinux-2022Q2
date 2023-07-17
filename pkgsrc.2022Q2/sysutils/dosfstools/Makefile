# $NetBSD: Makefile,v 1.2 2021/03/04 10:02:44 nia Exp $

DISTNAME=	dosfstools-4.2
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_GITHUB:=dosfstools/}
GITHUB_RELEASE=	v${PKGVERSION_NOREV}

MAINTAINER=	bsiegert@NetBSD.org
HOMEPAGE=	https://github.com/dosfstools/dosfstools
COMMENT=	Tools for working with FAT filesystems
LICENSE=	gnu-gpl-v3

ONLY_FOR_PLATFORM=	Linux-*-*

USE_LIBTOOL=	yes
GNU_CONFIGURE=	yes

CONFIGURE_ARGS+=	--enable-compat-symlinks

.include "../../mk/bsd.pkg.mk"
