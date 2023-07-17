# $NetBSD$

DISTNAME=	davfs2-1.6.1
CATEGORIES=	linux
MASTER_SITES=	http://download.savannah.nongnu.org/releases/davfs2/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://download.savannah.nongnu.org/releases/davfs2/
COMMENT=	fs driver that allows you to mount a WebDAV resource
LICENSE=	gnu-gpl-v2

USE_TOOLS+=		gmake intltool msgfmt msgmerge perl pkg-config xgettext

GNU_CONFIGURE=		yes
USE_PKGLOCALEDIR=	yes

.include "../../www/neon/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
