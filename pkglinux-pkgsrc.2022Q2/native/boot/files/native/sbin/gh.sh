#!/bin/bash -ue

echo -e "\n127.0.0.1 localhost\n" > /etc/hosts

curl https://raw.hellogithub.com/hosts >> /etc/hosts

/etc/rc.d/init.d/nscd restart

cat /etc/hosts

ping github.com
