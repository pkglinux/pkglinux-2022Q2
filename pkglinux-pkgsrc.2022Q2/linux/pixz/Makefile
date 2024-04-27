# $NetBSD$

DISTNAME=	pixz-1.0.7
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=vasi/pixz/releases/download/v1.0.7/}
EXTRACT_SUFX=	.tar.gz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/vasi/pixz/releases/download/v1.0.7/ # TODO: check
COMMENT=	smaller blocks which makes random access
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config gmake autoconf automake m4

.include "../../mk/bsd.prefs.mk"
pre-configure:
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
	gcp ${FILESDIR}/configure.ac ${WRKSRC}/
	gcp ${FILESDIR}/pixz.1 ${WRKSRC}/src/
.endif
	cd ${WRKSRC} && autoreconf -fiv

.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
CONFIGURE_ARGS+=	--host=${MACHINE_GNU_PLATFORM}
CONFIGURE_ARGS+=	--with-sysroot=${TOOLS_CROSS_DESTDIR}
PLIST_SRC=
GENERATE_PLIST+= \
 	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.endif

.include "../../archivers/libarchive/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
