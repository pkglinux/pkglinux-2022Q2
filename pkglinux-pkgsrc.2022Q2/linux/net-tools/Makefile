# $NetBSD$

DISTNAME=	net-tools-2.10
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=net-tools/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://net-tools.sourceforge.net/
COMMENT=	programs for controlling the network subsystem of the Linux kernel.
LICENSE=	gnu-gpl-v2

#USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		gmake
MAKE_ENV+=		BINDIR=${PREFIX}/bin
MAKE_ENV+=		SBINDIR=${PREFIX}/sbin

do-build:
	cd ${WRKSRC} && yes "" | ${SETENV} ${MAKE_ENV} ${GMAKE} -j${MAKE_JOBS}

post-install:
	${RM} ${DESTDIR}${PREFIX}/bin/{nis,yp}domainname
	${RM} ${DESTDIR}${PREFIX}/bin/{hostname,dnsdomainname,domainname,ifconfig}
	${RM} -r ${DESTDIR}${PREFIX}/share/man/man1
	${RM} ${DESTDIR}${PREFIX}/share/man/man8/ifconfig.8

.include "../../mk/bsd.pkg.mk"
