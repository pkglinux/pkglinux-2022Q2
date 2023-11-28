# $NetBSD$
# Note: Desktop environments, such as GNOME, systemd login manager, and some extra key handling daemons may implement their own event handling schemes, independent of acpid. Running more than one system at the same time may lead to unexpected behaviour, such as suspending two times in a row after one sleep button press. You should be aware of this and only activate desirable handlers.

DISTNAME=	acpid-2.0.34
CATEGORIES=	linux
MASTER_SITES=	https://jaist.dl.sourceforge.net/project/acpid2/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://jaist.dl.sourceforge.net/project/acpid2/
COMMENT=	TODO: Short description of the package
#LICENSE=	# TODO: (see mk/license.mk)

GNU_CONFIGURE=	yes

.include "../../mk/bsd.pkg.mk"
