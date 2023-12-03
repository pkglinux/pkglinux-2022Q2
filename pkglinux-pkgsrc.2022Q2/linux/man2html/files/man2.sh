#!/bin/bash -ue

echo '<p style="font-family:'Helvetica Neue,Helvetica,Monaco,Cantarell,Source Sans Pro'">'
./man2html /pkg/native/usr/share/man/man1/$1.1 | tail -n +6 | head -n -2 \
	| sed -e 's|<A HREF="">pkglinux-install</A>(1)|<A HREF="https://www.pkglinux.top/pkglinux-install.1">pkglinux-install</A>(1)|g' \
	| sed -e 's|<A HREF="">pkglinux-makeall</A>(1)|<A HREF="https://www.pkglinux.top/pkglinux-makeall.1">pkglinux-makeall</A>(1)|g' \
	| sed -e 's|<A HREF="">pkglinux-makeiso</A>(1)|<A HREF="https://www.pkglinux.top/pkglinux-makeiso.1">pkglinux-makeiso</A>(1)|g' \
	| sed -e 's|<A HREF="">pkglinux-makeusb</A>(1)|<A HREF="https://www.pkglinux.top/pkglinux-makeusb.1">pkglinux-makeusb</A>(1)|g' \
	| sed -e 's|<A HREF="">pkglinux-upgrade</A>(1)|<A HREF="https://www.pkglinux.top/pkglinux-upgrade.1">pkglinux-upgrade</A>(1)|g' \
	| sed -e 's|<A HREF="">pkg-chroot</A>(1)|<A HREF="https://www.pkglinux.top/pkg-chroot.1">pkg-chroot</A>(1)|g' \
	| sed -e 's|<A HREF="">pkg-strap</A>(1)|<A HREF="https://www.pkglinux.top/pkg-strap.1">pkg-strap</A>(1)|g' \
	| cat
echo '</p>'
