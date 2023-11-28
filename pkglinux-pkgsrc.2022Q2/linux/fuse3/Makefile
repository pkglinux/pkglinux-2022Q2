# $NetBSD$

DISTNAME=	fuse-3.9.0
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=libfuse/libfuse/releases/download/fuse-3.9.0/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/libfuse/libfuse/releases/download/fuse-3.9.0/ # TODO: check
COMMENT=	userspace programs to export a filesystem to the Linux kernel
LICENSE=	gnu-gpl-v2

USE_TOOLS+=		gmake pkg-config
USE_LIBTOOL=		yes

USE_LANGUAGES=	c c++

post-install:
	cd ${DESTDIR}${PREFIX}/lib/pkgconfig/ && ${LN} -sfv fuse3.pc fuse.pc

.include "../../devel/meson/build.mk"
.include "../../linux/eudev/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
