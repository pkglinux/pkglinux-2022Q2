# $NetBSD$

DISTNAME=	fd-7.5.0
CATEGORIES=	linux
MASTER_SITES=	https://codeload.github.com/sharkdp/fd/releases/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://codeload.github.com/sharkdp/fd/releases/
COMMENT=	simple, fast and user-friendly alternative to FIND
LICENSE=	gnu-gpl-v2

CARGO_CRATE_DEPENDS+=	aho-corasick-0.7.10
CARGO_CRATE_DEPENDS+=	ansi_term-0.11.0
CARGO_CRATE_DEPENDS+=	ansi_term-0.12.1
CARGO_CRATE_DEPENDS+=	atty-0.2.14
CARGO_CRATE_DEPENDS+=	autocfg-1.0.0
CARGO_CRATE_DEPENDS+=	bitflags-1.2.1
CARGO_CRATE_DEPENDS+=	bstr-0.2.12
CARGO_CRATE_DEPENDS+=	cc-1.0.50
CARGO_CRATE_DEPENDS+=	cfg-if-0.1.10
CARGO_CRATE_DEPENDS+=	clap-2.33.0
CARGO_CRATE_DEPENDS+=	crossbeam-channel-0.4.2
CARGO_CRATE_DEPENDS+=	crossbeam-utils-0.7.2
CARGO_CRATE_DEPENDS+=	ctrlc-3.1.4
CARGO_CRATE_DEPENDS+=	diff-0.1.12
CARGO_CRATE_DEPENDS+=	filetime-0.2.8
CARGO_CRATE_DEPENDS+=	fnv-1.0.6
CARGO_CRATE_DEPENDS+=	fs_extra-1.1.0
CARGO_CRATE_DEPENDS+=	fuchsia-cprng-0.1.1
CARGO_CRATE_DEPENDS+=	globset-0.4.5
CARGO_CRATE_DEPENDS+=	hermit-abi-0.1.8
CARGO_CRATE_DEPENDS+=	humantime-2.0.0
CARGO_CRATE_DEPENDS+=	ignore-0.4.12
CARGO_CRATE_DEPENDS+=	jemalloc-sys-0.3.2
CARGO_CRATE_DEPENDS+=	jemallocator-0.3.2
CARGO_CRATE_DEPENDS+=	kernel32-sys-0.2.2
CARGO_CRATE_DEPENDS+=	lazy_static-1.4.0
CARGO_CRATE_DEPENDS+=	libc-0.2.68
CARGO_CRATE_DEPENDS+=	log-0.4.8
CARGO_CRATE_DEPENDS+=	lscolors-0.6.0
CARGO_CRATE_DEPENDS+=	maybe-uninit-2.0.0
CARGO_CRATE_DEPENDS+=	memchr-2.3.3
CARGO_CRATE_DEPENDS+=	nix-0.17.0
CARGO_CRATE_DEPENDS+=	num_cpus-1.12.0
CARGO_CRATE_DEPENDS+=	rand-0.4.6
CARGO_CRATE_DEPENDS+=	rand_core-0.3.1
CARGO_CRATE_DEPENDS+=	rand_core-0.4.2
CARGO_CRATE_DEPENDS+=	rdrand-0.4.0
CARGO_CRATE_DEPENDS+=	redox_syscall-0.1.56
CARGO_CRATE_DEPENDS+=	regex-1.3.5
CARGO_CRATE_DEPENDS+=	regex-syntax-0.6.17
CARGO_CRATE_DEPENDS+=	remove_dir_all-0.5.2
CARGO_CRATE_DEPENDS+=	same-file-1.0.6
CARGO_CRATE_DEPENDS+=	strsim-0.8.0
CARGO_CRATE_DEPENDS+=	tempdir-0.3.7
CARGO_CRATE_DEPENDS+=	term_size-0.3.1
CARGO_CRATE_DEPENDS+=	textwrap-0.11.0
CARGO_CRATE_DEPENDS+=	thread_local-1.0.1
CARGO_CRATE_DEPENDS+=	unicode-width-0.1.7
CARGO_CRATE_DEPENDS+=	vec_map-0.8.1
CARGO_CRATE_DEPENDS+=	version_check-0.9.1
CARGO_CRATE_DEPENDS+=	void-1.0.2
CARGO_CRATE_DEPENDS+=	walkdir-2.3.1
CARGO_CRATE_DEPENDS+=	winapi-0.2.8
CARGO_CRATE_DEPENDS+=	winapi-0.3.8
CARGO_CRATE_DEPENDS+=	winapi-build-0.1.1
CARGO_CRATE_DEPENDS+=	winapi-i686-pc-windows-gnu-0.4.0
CARGO_CRATE_DEPENDS+=	winapi-util-0.1.3
CARGO_CRATE_DEPENDS+=	winapi-x86_64-pc-windows-gnu-0.4.0

USE_LANGUAGES+=	c c++	# rust, but needs a toolchain to link
USE_TOOLS=	gmake

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/target/release/fd ${DESTDIR}${PREFIX}/bin
	${STRIP} ${DESTDIR}${PREFIX}/bin/fd
	${INSTALL_MAN} ${WRKSRC}/doc/fd.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/fd.1

.include "../../lang/rust/cargo.mk"
.include "../../mk/bsd.pkg.mk"
