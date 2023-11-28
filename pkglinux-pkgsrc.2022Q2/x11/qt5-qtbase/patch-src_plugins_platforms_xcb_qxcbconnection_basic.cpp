$NetBSD$

--- src/plugins/platforms/xcb/qxcbconnection_basic.cpp.orig	2021-08-06 05:47:06.000000000 +0000
+++ src/plugins/platforms/xcb/qxcbconnection_basic.cpp
@@ -179,7 +179,13 @@ xcb_atom_t QXcbBasicConnection::internAt
     if (!name || *name == 0)
         return XCB_NONE;
 
-    return Q_XCB_REPLY(xcb_intern_atom, m_xcbConnection, false, strlen(name), name)->atom;
+    auto reply = Q_XCB_REPLY(xcb_intern_atom, m_xcbConnection, false, strlen(name), name);
+    if (!reply) {
+        qCDebug(lcQpaXcb) << "failed to query intern atom: " << name;
+        return XCB_NONE;
+    }
+
+    return reply->atom;
 }
 
 QByteArray QXcbBasicConnection::atomName(xcb_atom_t atom)
