#!/bin/bash -ue

#grep "PREFIX}/native" /root/sda3/pkgsrc.2021Q1/*/*/Makefile|grep -v "pkgsrc.2021Q1/linux\|pkgsrc.2021Q1/native"|cut -d' ' -f1|cut -d':' -f1|sort|uniq
for p in archivers/bzip2 archivers/gzip archivers/xz archivers/zstd \
	databases/gdbm devel/bison devel/flex devel/gettext-tools devel/gmp \
	devel/gperf devel/gtexinfo devel/libffi devel/ncurses devel/ncursesw \
	devel/popt devel/readline devel/zlib editors/vim filesystems/squashfs \
	graphics/png lang/python39 math/mpcomplex math/mpfr net/inetutils \
	security/openssl shells/bash sysutils/attr sysutils/file \
	sysutils/libcap sysutils/psmisc textproc/expat
do
#	echo "cat << EOF | sed -i '/post-install:/r /dev/stdin' ../../$p/Makefile"
	echo "cat << \"EOF\" >> ../../$p/Makefile"
#	awk '/post-install:/,/^$/' /root/sda3/pkgsrc.2021Q4/$p/Makefile
	sed -n '/post-install:/,/^$/p' /root/sda3/pkgsrc.2021Q4/$p/Makefile
	echo EOF
	echo "cat << \"EOF\" >> ../../$p/PLIST"
	grep native /root/sda3/pkgsrc.2021Q4/$p/PLIST
	echo EOF
done
for p in archivers/bzip2 archivers/gzip archivers/xz archivers/zstd \
	databases/gdbm devel/bison devel/flex devel/gettext-tools devel/gmp \
	devel/gperf devel/gtexinfo devel/libffi devel/ncurses devel/ncursesw \
	devel/popt devel/readline devel/zlib editors/vim filesystems/squashfs \
	graphics/png lang/python39 math/mpcomplex math/mpfr net/inetutils \
	security/openssl shells/bash sysutils/attr sysutils/file \
	sysutils/libcap sysutils/psmisc textproc/expat
do
#	echo "vi ../../$p/Makefile"
#	echo "vi ../../$p/PLIST"
	echo /root/sda3/packages.2022Q1/All/*$(echo "$p" | cut -d'/' -f 2)*
done
