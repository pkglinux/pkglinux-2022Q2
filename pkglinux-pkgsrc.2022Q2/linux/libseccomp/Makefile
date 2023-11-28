# $NetBSD$

GITHUB_PROJECT=	libseccomp
#DISTNAME=	libseccomp-2.5.1
DISTNAME=	libseccomp-2.5.4
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=seccomp/}
#GITHUB_RELEASE=	v2.5.1
GITHUB_RELEASE=	v2.5.4

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/seccomp/libseccomp/
COMMENT=	Interface to the Linux Kernel syscall filtering mechanism
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake pkg-config
#USE_LIBTOOL=	yes

PKGCONFIG_OVERRIDE+=	libseccomp.pc.in

.include "../../mk/bsd.pkg.mk"
