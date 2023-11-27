#!/usr/bin/env bash
sudo -i -u root bash << EOF
blanked=0
xscreensaver-command -watch |
while read f1; do
  if [[ \$f1 == BLANK* ]]; then
    if [ !\$blanked ]; then
      blanked=1
    fi
  elif [[ \$f1 == UNBLANK* ]]; then
#    echo 7 > /sys/class/backlight/dell_backlight/brightness
    echo 7 > /sys/class/backlight/acpi_video0/brightness
    blanked=0
  fi 
done
EOF
