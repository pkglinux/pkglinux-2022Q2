# $NetBSD$

DISTNAME=	strace-5.12
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=strace/strace/releases/download/v5.12/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/strace/strace/releases/download/v5.12/ # TODO: check
COMMENT=	Diagnostic, debugging and instructional userspace utility
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	gmake pkg-config intltools msgfmt xgettext perl

TOOLS_PLATFORM.msgfmt=


.include "../../mk/bsd.pkg.mk"
