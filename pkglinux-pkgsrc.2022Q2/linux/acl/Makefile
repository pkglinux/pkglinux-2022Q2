# $NetBSD$

DISTNAME=	acl-2.2.53
CATEGORIES=	linux
MASTER_SITES=	http://download.savannah.gnu.org/releases/acl/

MAINTAINER=	use pkgsrc-users@NetBSD.org
HOMEPAGE=	http://download.savannah.gnu.org/releases/acl/
COMMENT=	Access control list package
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config gmake
USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE+=	libacl.pc.in

post-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/
	cd ${DESTDIR}${PREFIX}/native/usr/lib/ && ${LN} -sfv ../../../lib/libacl* .

.include "../../mk/bsd.pkg.mk"
