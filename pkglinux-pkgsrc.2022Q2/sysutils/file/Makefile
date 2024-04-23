# $NetBSD: Makefile,v 1.50 2021/12/27 23:25:08 schmonz Exp $

DISTNAME=		file-5.40
CATEGORIES=		sysutils
MASTER_SITES=		http://ftp.astron.com/pub/file/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://www.darwinsys.com/file/
COMMENT=		Tool for determining file type
LICENSE=		2-clause-bsd

USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--enable-fsect-man5
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR:Q}

SUBST_CLASSES+=		paths
SUBST_STAGE.paths=	pre-configure
SUBST_FILES.paths=	magic/myfile
SUBST_VARS.paths=	SH

MESSAGE_SUBST+=		PKG_SYSCONFDIR=${PKG_SYSCONFDIR}

TEST_TARGET=		check

.include "../../mk/compiler.mk"

# gcc<4 does not know -Wextra.
# XXX: should be treated with wrappers automatically.
.if !empty(CC_VERSION:Mgcc-[23]*)
BUILDLINK_TRANSFORM+=	opt:-Wextra:-W
.endif
# gcc<3 does not know -Wunused-parameter
.if !empty(CC_VERSION:Mgcc-2*)
BUILDLINK_TRANSFORM+=	rm:-Wunused-parameter
.endif

CFLAGS.AIX+=	-D_LINUX_SOURCE_COMPAT

post-install:
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/bin/
	cd ${DESTDIR}${PREFIX}/ && find bin/file | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/include/
	cd ${DESTDIR}${PREFIX}/ && find include/magic.h | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/
	cd ${DESTDIR}${PREFIX}/ && find lib/pkgconfig/libmagic.pc | xargs -I F ${LN} -sfv ${PREFIX}/F native/usr/F
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/include/
#	cd ${DESTDIR}${PREFIX}/native/usr/include/ && ${LN} -sfv ../../../include/magic.h .
#	${MKDIR} -v ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/
#	cd ${DESTDIR}${PREFIX}/native/usr/lib/pkgconfig/ && ${LN} -sfv ../../../../lib/pkgconfig/libmagic.pc .

.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
post-patch:
	cd ${WRKSRC}/magic/ && gsed -e "s:./file:/pkg/bin/file:g" -i myfile

PLIST_SRC=
GENERATE_PLIST+= \
 	cd ${DESTDIR}${PREFIX} && \
	${FIND} * \( -type f -o -type l \) -print | ${SORT} ;
.endif

.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
