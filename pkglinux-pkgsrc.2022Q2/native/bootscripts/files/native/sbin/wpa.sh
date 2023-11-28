#!/bin/bash

echo $3 | wpa_passphrase $2 > /etc/supplicant.conf
wpa_supplicant -B -D wext -i $1 -c /etc/wpa_supplicant.conf
