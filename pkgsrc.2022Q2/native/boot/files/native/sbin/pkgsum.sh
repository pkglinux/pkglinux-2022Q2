#!/bin/bash -ue

for arg in "$@"; do
	shift
	case "$arg" in
		"--basedir")	set -- "$@" "-b" ;;
		*)		set -- "$@" "$arg"
	esac
done

_basedir="/root/sda3"

while getopts 'b:' OPTION; do
	case "$OPTION" in
		b)
			_basedir="$OPTARG" ;;
		*)
			echo "Usage: $0 [ -b basedir ] prefix" >&2
			exit 1 ;;
	esac
done

# Remove all options passed by getopts options
shift "$(($OPTIND -1))"

[[ "$#" -lt 1 ]] && { echo "Usage: $0 [ -b basedir ] prefix" >&2; exit 1; }
[[ -d "$_basedir/packages.$1" ]] ||  { echo "$_basedir/packages.$1 is not a directory.";exit 1; }

pushd $_basedir/packages.$1/All/
pwd
find . -name '*.tgz' -exec pkg_info -X {} \; > pkg_summary
gzip -f pkg_summary
ls -la pkg_summary*
popd
sync
