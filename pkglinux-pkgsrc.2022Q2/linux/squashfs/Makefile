# $NetBSD: Makefile,v 1.8 2020/06/19 21:17:46 scole Exp $

#VERSION=	4.4
VERSION=	4.6.1
DISTNAME=	squashfs-tools-${VERSION}
PKGNAME=	squashfs-${VERSION}

CATEGORIES=	filesystems
MASTER_SITES=	${MASTER_SITE_GITHUB:=plougher/}
GITHUB_PROJECT=	squashfs-tools
GITHUB_TAG=	${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/plougher/squashfs-tools
COMMENT=	Tools for squashfs archives
LICENSE=	gnu-gpl-v2

.include "../../mk/bsd.prefs.mk"
.include "options.mk"

USE_LANGUAGES=	c

USE_TOOLS+=	gmake
USE_LIBTOOL=	yes

INSTALLATION_DIRS=	bin \
			${PREFIX}/${PKGMANDIR}/man1

SQUASH_DIR=	${WRKDIR}/${DISTNAME}
WRKSRC=		${SQUASH_DIR}/squashfs-tools
#SQUASH_PKG_DOC=	${DESTDIR}${PREFIX}/share/doc/squashfs

# xxx no sigtimedwait or sigwaitinfo on mac os?
BROKEN_ON_PLATFORM=	Darwin-*-*

do-install:
	${LIBTOOL} --mode=install ${INSTALL_PROGRAM} \
		${WRKSRC}/mksquashfs ${DESTDIR}${PREFIX}/bin
	${LIBTOOL} --mode=install ${INSTALL_PROGRAM} \
		${WRKSRC}/unsquashfs ${DESTDIR}${PREFIX}/bin
	cd ${DESTDIR}${PREFIX}/bin/ && gstrip mksquashfs
	cd ${DESTDIR}${PREFIX}/bin/ && gstrip unsquashfs
	cd ${DESTDIR}${PREFIX}/bin/ && ln -sf unsquashfs sqfscat
	cd ${DESTDIR}${PREFIX}/bin/ && ln -sf mksquashfs sqfstar
	${INSTALL_MAN} ${SQUASH_DIR}/manpages/mksquashfs.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/
	${INSTALL_MAN} ${SQUASH_DIR}/manpages/sqfscat.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/
	${INSTALL_MAN} ${SQUASH_DIR}/manpages/sqfstar.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/
	${INSTALL_MAN} ${SQUASH_DIR}/manpages/unsquashfs.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/

post-install:
	${MKDIR} ${DESTDIR}${PREFIX}/native/usr/bin/
	lndir.sh -l sf ${PREFIX}/bin ${PREFIX}/native/usr/bin ${DESTDIR}
#	lndir.sh ${DESTDIR}${PREFIX}/bin ${DESTDIR}${PREFIX}/native/usr/bin

.include "../../mk/bsd.pkg.mk"
