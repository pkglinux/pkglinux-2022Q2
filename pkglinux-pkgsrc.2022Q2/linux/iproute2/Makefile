# $NetBSD$

DISTNAME=	iproute2-5.5.0
CATEGORIES=	linux
MASTER_SITES=	https://www.kernel.org/pub/linux/utils/net/iproute2/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.kernel.org/pub/linux/utils/net/iproute2/
COMMENT=	set of utilities for Linux networking
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

USE_LANGUAGES=		c c++

#NO_BUILD=	yes
NO_CONFIGURE=	yes
GNU_CONFIGURE=	no
USE_TOOLS+=	gmake pkg-config

MAKE_ENV+=	LIBDIR=${PREFIX}/lib
MAKE_ENV+=	SBINDIR=${PREFIX}/sbin
MAKE_ENV+=	CONFDIR=${PREFIX}/etc/iproute2
MAKE_ENV+=	NETNS_RUN_DIR=${PREFIX}/var/run/netns
MAKE_ENV+=	NETNS_ETC_DIR=${PREFIX}/etc/netns
MAKE_ENV+=	DATADIR=${PREFIX}/share
MAKE_ENV+=	HDRDIR=${PREFIX}/include/iproute2
MAKE_ENV+=	DOCDIR=${PREFIX}/share/doc/${PKGNAME}
MAKE_ENV+=	MANDIR=${PREFIX}/man
MAKE_ENV+=	KERNEL_INCLUDE=/usr/include
MAKE_ENV+=	BASH_COMPDIR?=${PREFIX}/bash-completion/completions

USE_PKGLOCALEDIR=	yes

post-extract:
	sed -i /ARPD/d ${WRKSRC}/Makefile
	rm -fv ${WRKSRC}/man/man8/arpd.8
	sed -i 's/.m_ipt.o//' ${WRKSRC}/tc/Makefile

.include "../../mk/bsd.pkg.mk"
