# $NetBSD$

DISTNAME=	sshfs-3.7.3
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=libfuse/sshfs/releases/download/sshfs-3.7.3/}
#EXTRACT_SUFX=	.tar.gz
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/libfuse/sshfs/releases/download/sshfs-3.7.3/ # TODO: check
COMMENT=	mount a remote filesystem using SFTP
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	pkg-config gmake

#WRKSRC=		${WRKDIR}/sshfs-${DISTNAME}

.include "../../linux/fuse3/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/meson/build.mk"
.include "../../mk/bsd.pkg.mk"
