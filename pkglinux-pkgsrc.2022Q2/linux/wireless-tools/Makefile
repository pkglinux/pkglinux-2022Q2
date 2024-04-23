# $NetBSD: Makefile,v 1.11 2015/01/13 05:25:02 obache Exp $
#

DISTNAME=		wireless_tools.29
PKGNAME=		${DISTNAME:S/./-/:S/_/-/}
CATEGORIES=		net linux
MASTER_SITES=		https://www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/Tools.html
COMMENT=		Tools for manipulating Linux Wireless Extensions
LICENSE=		gnu-gpl-v2


ONLY_FOR_PLATFORM=	Linux-*-*

NO_CONFIGURE=		yes
USE_TOOLS+=		gmake

post-extract:
	cd ${WRKSRC} && gsed -e "s:ifndef PREFIX:PREFIX = \$$\(DESTDIR\)${PREFIX}\nifndef PREFIX:g" -i Makefile

.include "../../mk/bsd.pkg.mk"
