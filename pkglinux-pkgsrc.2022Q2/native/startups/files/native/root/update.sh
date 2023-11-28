#!/bin/bash

gdk-pixbuf-query-loaders --update-cache
gtk-query-immodules-2.0 --update-cache
gtk-query-immodules-3.0 --update-cache
glib-compile-schemas /pkg/share/glib-2.0/schemas
GTK_PATH=/pkg/lib/gtk-3.0 gtk-query-immodules-3.0 --update-cache
GTK_PATH=/pkg/lib/gtk-2.0 gtk-query-immodules-2.0 --update-cache
#(cd /root;rm -rf .cache .config .local .dbus .gvfs .gconf .gconfd;sync)
