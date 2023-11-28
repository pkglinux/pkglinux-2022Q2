# $NetBSD: Makefile,v 1.14 2012/11/25 23:32:07 othyro Exp $
#
#Note: Desktop environments, such as GNOME, systemd login manager, and some extra key handling daemons may implement their own event handling schemes, independent of acpid. Running more than one system at the same time may lead to unexpected behaviour, such as suspending two times in a row after one sleep button press. You should be aware of this and only activate desirable handlers.

DISTNAME=		acpid-1.0.4
PKGREVISION=		2
CATEGORIES=		linux sysutils
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=acpid/}
#EXTRACT_SUFX=		.tar.gz

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://acpid.sourceforge.net/
COMMENT=		Linux ACPI event handler
LICENSE=		gnu-gpl-v2

ONLY_FOR_PLATFORM=	Linux-*-*

EGDIR=			${PREFIX}/share/examples/acpid
CONF_FILES+=		${EGDIR}/sample.conf ${PKG_SYSCONFDIR}/acpid/acpid.conf
RCD_SCRIPTS=		acpid
INSTALLATION_DIRS+=	share/examples/acpid

USE_TOOLS+=		gmake pax

#acpid uses some special -D_GNU_SOURCE functions that are not activated in glibc-2.8 so lets activate the -D_GNU_SOURCE flag.
#CFLAGS.Linux+=	-D_GNU_SOURCE # Dl_info internals
#CFLAGS+=	-D_GNU_SOURCE -D_BSD_SOURCE
CFLAGS+=	-D_GNU_SOURCE

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/acpid ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/acpi_listen ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/acpid.8 ${PREFIX}/${PKGMANDIR}/man8/
	cd ${WRKSRC}/samples/ && pax -wr * ${PREFIX}/share/examples/acpid/

.include "../../mk/bsd.pkg.mk"
