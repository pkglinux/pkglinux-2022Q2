# $NetBSD$

DISTNAME=	udisks-2.9.3
CATEGORIES=	linux
MASTER_SITES=	${MASTER_SITE_GITHUB:=storaged-project/udisks/releases/download/udisks-2.9.3/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	use pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/storaged-project/udisks/releases/download/udisks-2.9.3/ # TODO: check
COMMENT=	manipulate disks, storage devices and technologies
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config gmake
USE_TOOLS+=		gdbus-codegen
USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE+=	modules/bcache/data/udisks2-bcache.pc.in
PKGCONFIG_OVERRIDE+=	modules/btrfs/data/udisks2-btrfs.pc.in
PKGCONFIG_OVERRIDE+=	modules/iscsi/data/udisks2-iscsi.pc.in
PKGCONFIG_OVERRIDE+=	modules/lsm/data/udisks2-lsm.pc.in
PKGCONFIG_OVERRIDE+=	modules/lvm2/data/udisks2-lvm2.pc.in
PKGCONFIG_OVERRIDE+=	modules/vdo/data/udisks2-vdo.pc.in
PKGCONFIG_OVERRIDE+=	modules/zram/data/udisks2-zram.pc.in
PKGCONFIG_OVERRIDE+=	udisks/udisks2.pc.in

.include "../../devel/glib2/buildlink3.mk"
.include "../../linux/libatasmart/buildlink3.mk"
.include "../../linux/libblockdev/buildlink3.mk"
.include "../../linux/libgudev/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../security/polkit/buildlink3.mk"
.include "../../devel/libblkid/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
