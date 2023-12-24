# $NetBSD$

DISTNAME=	gsoap_2.8.131
PKGNAME=	${DISTNAME:S/_/-/}
CATEGORIES=	linux
MASTER_SITES=	https://sourceforge.net/projects/gsoap2/files/
EXTRACT_SUFX=	.zip

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://sourceforge.net/projects/gsoap2/files/
COMMENT=	Tools for coding SOAP XML Web Services in C and C++
LICENSE=	gnu-gpl-v2

GCC_REQD+=	7

WRKSRC=		${WRKDIR}/gsoap-2.8
GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config
USE_TOOLS+=	yacc flex:run gmake pax
USE_LANGUAGES=	c c++

PKGCONFIG_OVERRIDE+=	gsoap++.pc.in
PKGCONFIG_OVERRIDE+=	gsoap.pc.in
PKGCONFIG_OVERRIDE+=	gsoapck++.pc.in
PKGCONFIG_OVERRIDE+=	gsoapck.pc.in
PKGCONFIG_OVERRIDE+=	gsoapssl++.pc.in
PKGCONFIG_OVERRIDE+=	gsoapssl.pc.in

#CFLAGS+=	"-DWITH_NO_C_LOCALE"
#CXXFLAG+=	"-DWITH_NO_C_LOCALE"
#CONFIGURE_ARGS+=	--disable-c-locale
CONFIGURE_ARGS+=	--with-zlib=${PREFIX}
CONFIGURE_ARGS+=	--with-openssl=${PREFIX}
#build without TLS/SSL -- note: the wsse and wst examples will fail to build
#CONFIGURE_ARGS+=	--disable-ssl
CONFIGURE_ARGS+=	--enable-gnutls

post-install0:
	cd ${DESTDIR}${PREFIX}/lib/ && \
		${CC} -shared -o libgsoap++.so    libgsoap++.a && \
		${CC} -shared -o libgsoap.so      libgsoap.a && \
		${CC} -shared -o libgsoapck++.so  libgsoapck++.a && \
		${CC} -shared -o libgsoapck.so    libgsoapck.a && \
		${CC} -shared -o libgsoapssl++.so libgsoapssl++.a &&\
		${CC} -shared -o libgsoapssl.so   libgsoapssl.a

post-install:
	lndir.sh -l sf ${PREFIX}/bin ${PREFIX}/native/usr/bin ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/include ${PREFIX}/native/usr/include ${DESTDIR}
	lndir.sh -l sf ${PREFIX}/lib ${PREFIX}/native/usr/lib ${DESTDIR}

.include "../../devel/bison/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../security/gnutls/buildlink3.mk"
.include "../../security/libgcrypt/buildlink3.mk"
.include "../../security/libgpg-error/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
