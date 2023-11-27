#!/usr/bin/perl -wT

my $blanked = 0;
open (IN, "xscreensaver-command -watch |");
while (<IN>) {
  if (m/^(BLANK|LOCK)/) {
    if (!$blanked) {
      $blanked = 1;
    }
  } elsif (m/^UNBLANK/) {
    system "echo 7 > /sys/class/backlight/dell_backlight/brightness";
    $blanked = 0;
  }
}
