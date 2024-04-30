# $NetBSD: Makefile,v 1.62 2020/01/18 21:48:19 jperkin Exp $

DISTNAME=	libfetch-2.39
PKGREVISION=	1
CATEGORIES=	net
MASTER_SITES=	# empty
DISTFILES=	# empty

MAINTAINER=	joerg@NetBSD.org
HOMEPAGE=	https://www.FreeBSD.org/
COMMENT=	Library to access HTTP/FTP server
LICENSE=	modified-bsd

USE_FEATURES=		nbcompat

USE_BSD_MAKEFILE=	yes

.include "../../mk/bsd.prefs.mk"
.if !empty(FETCH_USING:Mfetch)
CHECK_PERMS=		no
.endif

INSTALLATION_DIRS=	include lib ${PKGMANDIR}/cat3 ${PKGMANDIR}/man3

BUILD_TARGET=	depend all
INSTALL_TARGET=	install includes

do-extract:
	${CP} -r ${FILESDIR} ${WRKSRC}
	${TOUCH} ${WRKSRC}/fetch.cat3

.include "../../mk/bsd.prefs.mk"
.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
#.include "../../pkgtools/libnbcompat/buildlink3.mk"
#CFLAGS+=	--shared -fPIC
CONFIGURE_ARGS+=	--host=${MACHINE_GNU_PLATFORM}
CONFIGURE_ARGS+=	--with-sysroot=${TOOLS_CROSS_DESTDIR}
MAKE_ENV+= 		PATH=${TOOLDIR}/bin:$$PATH
.if !empty(MACHINE_GNU_PLATFORM:Mmips64-*-gnuabi64)
# /pkg/native/cross-mips64abi64/bin/mips64-unknown-linux-gnuabi64-ld --print-output-format
# elf32-ntradbigmips
MAKE_ENV+=		LD_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ld --oformat elf64-tradbigmips"
MAKE_ENV+=		LD="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ld --oformat elf64-tradbigmips"
BSD_MAKE_ENV+=		LD_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ld --oformat elf64-tradbigmips"
BSD_MAKE_ENV+=		LD="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ld --oformat elf64-tradbigmips"
CONFIGURE_ENV+=		LD_FOR_TARGET="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ld --oformat elf64-tradbigmips"
CONFIGURE_ENV+=		LD="${TOOLDIR}/bin/${MACHINE_GNU_PLATFORM}-ld --oformat elf64-tradbigmips"
.elif !empty(MACHINE_GNU_PLATFORM:Mmips64el-*-gnuabi64)
MAKE_ENV+=		LD_FOR_TARGET="${TOOLDIR}/${MACHINE_GNU_PLATFORM}/bin/ld --oformat elf64-tradlittlemips"
MAKE_ENV+=		LD="${TOOLDIR}/${MACHINE_GNU_PLATFORM}/bin/ld --oformat elf64-tradlittlemips"
BSD_MAKE_ENV+=		LD_FOR_TARGET="${TOOLDIR}/${MACHINE_GNU_PLATFORM}/bin/ld --oformat elf64-tradlittlemips"
BSD_MAKE_ENV+=		LD="${TOOLDIR}/${MACHINE_GNU_PLATFORM}/bin/ld --oformat elf64-tradlittlemips"
CONFIGURE_ENV+=		LD_FOR_TARGET="${TOOLDIR}/${MACHINE_GNU_PLATFORM}/bin/ld --oformat elf64-tradlittlemips"
CONFIGURE_ENV+=		LD="${TOOLDIR}/${MACHINE_GNU_PLATFORM}/bin/ld --oformat elf64-tradlittlemips"
.endif
USE_BUILTIN.openssl=	no
.include "../../security/openssl/buildlink3.mk"
.endif
.include "options.mk"

.include "../../mk/bsd.pkg.mk"
