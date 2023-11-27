#!/bin/bash -ue

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
basedir=""
[[ "$#" -gt 2 ]] && { basedir=$3; }
[[ -d $1 ]] ||  { echo "$1 is not a directory.";exit 1; }
( cd $basedir$1 && find . -type d          | eval $filter | xargs -I F mkdir -p $basedir$2/F )
( cd $basedir$1 && find . -type l -xtype d | cut -c3- | eval $filter | xargs -I F cp -a $basedir$1/F $basedir$2/F )
( cd $basedir$1 && find . -type l -xtype f | cut -c3- | eval $filter | xargs -I F ln -$lnflag $1/F $basedir$2/F )
( cd $basedir$1 && find . -type f          | cut -c3- | eval $filter | xargs -I F ln -$lnflag $1/F $basedir$2/F )
