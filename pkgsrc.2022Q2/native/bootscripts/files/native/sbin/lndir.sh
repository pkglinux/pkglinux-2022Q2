#!/bin/bash -ue

<< MIT-LICENSE
Copyright (c) 2023 Jianjun Liu<jianjunliu@126.com> https://www.pkglinux.top

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
MIT-LICENSE

for arg in "$@"; do
	shift
	case "$arg" in
		"--filter")	set -- "$@" "-f" ;;
		"--lnflag")	set -- "$@" "-l" ;;
		*)		set -- "$@" "$arg"
	esac
done

filter="cat"
lnflag="sfr"

while getopts 'fl:' OPTION; do
	case "$OPTION" in
		f)
			filter="$OPTARG" ;;
		l)
			lnflag="$OPTARG" ;;
		*)
			echo "Usage: $0 [ -f filter ] [ -l lnflags ] fromdir todir  [ basedir ]" >&2
			exit 1 ;;
	esac
done

# Remove all options passed by getopts options
shift "$(($OPTIND -1))"

[[ "$#" -lt 2 ]] && { echo "Usage: $0 [ -f filter ] [ -l lnflags ] fromdir todir [ basedir ]" >&2; exit 1; }
[ ${UID} -ne 0 ] && echo "$0 will not be performed when not running as root" && exit 1;
basedir=""
[[ "$#" -gt 2 ]] && { basedir=$3; }
[[ -d $1 ]] ||  { echo "$1 is not a directory.";exit 1; }
( cd $basedir$1 && find . -type d          | eval $filter | xargs -I F mkdir -p $basedir$2/F )
( cd $basedir$1 && find . -type l -xtype d | cut -c3- | eval $filter | xargs -I F cp -a $basedir$1/F $basedir$2/F )
( cd $basedir$1 && find . -type l -xtype f | cut -c3- | eval $filter | xargs -I F ln -$lnflag $1/F $basedir$2/F )
( cd $basedir$1 && find . -type f          | cut -c3- | eval $filter | xargs -I F ln -$lnflag $1/F $basedir$2/F )
