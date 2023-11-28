# $NetBSD$

DISTNAME=	shadow-4.8.1
CATEGORIES=	linux
MASTER_SITES=	https://github.com/shadow-maint/shadow/releases/download/4.8.1/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/shadow-maint/shadow/releases/download/4.8.1/
COMMENT=	User administration and passwd database tools for Linux
LICENSE=	gnu-gpl-v2 AND gnu-lgpl-v2.1

ONLY_FOR_PLATFORM=	Linux-*-* # Linux shadow format

GNU_CONFIGURE=		YES
USE_LIBTOOL=		yes

.include "../../mk/bsd.prefs.mk"

PKG_OPTIONS_VAR=	PKG_OPTIONS.shadow
#PKG_SUPPORTED_OPTIONS=	pam libcrack
PKG_SUPPORTED_OPTIONS=

.include "../../mk/bsd.options.mk"

###
### PAM support.
###
.if !empty(PKG_OPTIONS:Mpam)
.  include "../../security/PAM/buildlink3.mk"
CONFIGURE_ARGS+=	--with-libpam
MESSAGE_SRC+=		${.CURDIR}/MESSAGE.pam
EGDIR=			${PREFIX}/share/examples/${PKGBASE}
MESSAGE_SUBST+=		EGDIR=${EGDIR}
PLIST_SUBST+=		PAM=
.else
CONFIGURE_ARGS+=	--without-libpam
PLIST_SUBST+=		PAM="@comment"
.endif

###
### Support using libcrack to protect against weak passwords.
###
.if !empty(PKG_OPTIONS:Mlibcrack)
.  include "../../security/libcrack/buildlink3.mk"
CONFIGURE_ARGS+=	--with-libcrack
.else
CONFIGURE_ARGS+=	--without-libcrack
.endif

.if !empty(PKG_OPTIONS:Mpam)
post-install:
	${INSTALL_DATA_DIR} ${EGDIR}
	${INSTALL_DATA} ${FILESDIR}/shadow.pam ${EGDIR}/
	${INSTALL_DATA} ${FILESDIR}/useradd.pam ${EGDIR}/
.endif

CONFIGURE_ARGS+=	--sysconfdir=${PREFIX}/etc
CONFIGURE_ARGS+=	--with-group-name-max-length=32

# Disable the installation of the groups program and its man pages, as Coreutils provides a better version. Also, prevent the installation of manual pages that were already installed
# Instead of using the default crypt method, use the more secure SHA-512 method of password encryption, which also allows passwords longer than 8 characters. It is also necessary to change the obsolete /var/spool/mail location for user mailboxes that Shadow uses by default to the /var/mail location used currently: 
pre-configure:
	cd ${WRKSRC} && sed -i 's/groups$(EXEEXT) //' src/Makefile.in
	cd ${WRKSRC} && find man -name Makefile.in -exec sed -i 's/groups\.1 / /'   {} \;
	cd ${WRKSRC} && find man -name Makefile.in -exec sed -i 's/getspnam\.3 / /' {} \;
	cd ${WRKSRC} && find man -name Makefile.in -exec sed -i 's/passwd\.5 / /'   {} \;
	cd ${WRKSRC} && sed -i -e 's@#ENCRYPT_METHOD DES@ENCRYPT_METHOD SHA512@' \
		       -e 's@/var/spool/mail@/var/mail@' etc/login.defs
	cd ${WRKSRC} && sed -i 's@DICTPATH.*@DICTPATH\t/lib/cracklib/pw_dict@' etc/login.defs
	cd ${WRKSRC} && sed -i 's/1000/999/' etc/useradd

#This parameter causes useradd to create a mailbox file for the newly created user. useradd will make the group ownership of this file to the mail group with 0660 permissions. If you would prefer that these mailbox files are not created by useradd, issue the following command:
post-install:
	sed -i 's/yes/no/' ${DESTDIR}${PREFIX}/etc/default/useradd
	if [[ -d ${DESTDIR}${PREFIX}/man ]]; then \
		${MKDIR} -v ${DESTDIR}${PREFIX}/share/man/; \
		${CP} -a ${DESTDIR}${PREFIX}/man/* ${DESTDIR}${PREFIX}/share/man/; \
		${RM} -rf ${DESTDIR}${PREFIX}/man; \
	fi

.include "../../mk/bsd.pkg.mk"
