$NetBSD$

--- gtweak/tweakview.py.orig	2020-12-09 21:26:17.256031300 +0000
+++ gtweak/tweakview.py
@@ -24,8 +24,7 @@ class Window(Gtk.ApplicationWindow):
         self.hsize_group = Gtk.SizeGroup(mode=Gtk.SizeGroupMode.HORIZONTAL)
 
         self.main_box = Handy.Leaflet()
-        self.main_box.set_mode_transition_type(Handy.LeafletModeTransitionType.SLIDE)
-        self.main_box.set_child_transition_type(Handy.LeafletChildTransitionType.SLIDE)
+        self.main_box.set_transition_type(Handy.LeafletTransitionType.SLIDE)
 
         left_box = self.sidebar()
         right_box = self.main_content()
@@ -69,14 +68,13 @@ class Window(Gtk.ApplicationWindow):
     def titlebar(self):
 
         header = Handy.Leaflet()
-        header.set_mode_transition_type(Handy.LeafletModeTransitionType.SLIDE)
-        header.set_child_transition_type(Handy.LeafletChildTransitionType.SLIDE)
+        header.set_transition_type(Handy.LeafletTransitionType.SLIDE)
         header.connect("notify::visible-child", self._update_decorations)
         header.connect("notify::fold", self._update_decorations)
 
-        left_header = Gtk.HeaderBar()
+        left_header = Handy.HeaderBar()
         left_header.props.show_close_button = True
-        right_header = Gtk.HeaderBar()
+        right_header = Handy.HeaderBar()
         right_header.props.show_close_button = True
         right_header.props.hexpand = True
 
@@ -227,9 +225,9 @@ class Window(Gtk.ApplicationWindow):
     def _update_decorations(self, *_):
         header = self.get_titlebar()
         if header.props.folded:
-            self.header_group.set_focus(header.get_visible_child())
+            self.header_group.set_decorate_all(True)
         else:
-            self.header_group.set_focus(None)
+            self.header_group.set_decorate_all(False)
 
     def _after_key_press(self, widget, event):
         if not self.button.get_active() or not self.entry.is_focus():
