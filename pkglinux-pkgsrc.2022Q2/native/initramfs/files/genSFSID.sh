#!/bin/bash

# Generate a random 32 character alphanumeric string (upper and lowercase) and numbers in Bash
#IDLABEL="$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w ${1:-32} | head -n 1)"
#xxd -u -l 16 -p /dev/urandom
#works in bash and busybox, but not in ksh
#tr -dc 'A-F0-9' < /dev/urandom | head -c32
#works in bash and ksh, but not in busybox
#tr -dc 'A-F0-9' < /dev/urandom | dd status=none bs=1 count=32
#works in bash, ksh, AND busybox! w00t!
#tr -dc 'A-F0-9' < /dev/urandom | dd bs=1 count=32 2>/dev/null
#hexdump -n 16 -e '4/4 "%08X" 1 "\n"' /dev/random

SFSID="$(tr -dc 'A-F0-9' < /dev/urandom | head -c32)"
sed -i "s,SFSID=.*,SFSID=$SFSID,g" SFSID.sh
sed -i "s,SFSID=.*,SFSID=$SFSID,g" pkgiso.sh
sed -i "s,SFSID=.*,SFSID=$SFSID,g" pkgusb.sh
cp -v pkgiso.sh /root/
cp -v pkgusb.sh /root/
