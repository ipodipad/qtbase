TEMPLATE=subdirs
SUBDIRS=\
   qbackingstore \
   qclipboard \
   qcursor \
   qdrag \
   qguiaction \
   qguiactiongroup \
   qevent \
   qfileopenevent \
   qguieventdispatcher \
   qguieventloop \
   qguimetatype \
   qguishortcut \
   qguitimer \
   qguivariant \
   qhighdpiscaling \
   qinputmethod \
   qkeyevent \
   qkeysequence \
   qmouseevent \
   qmouseevent_modal \
   qpalette \
   qscreen \
   qsurfaceformat \
   qtouchevent \
   qwindow \
   qguiapplication \
   qpixelformat \
   qopenglwindow \
   qrasterwindow

win32:!winrt:qtHaveModule(network): SUBDIRS += noqteventloop

!qtConfig(shortcut): SUBDIRS -= \
   qkeysequence \
   qguishortcut \
   qguimetatype \
   qguivariant

!qtHaveModule(widgets): SUBDIRS -= \
   qmouseevent_modal \
   qtouchevent

!qtHaveModule(network): SUBDIRS -= \
   qguieventloop

!qtConfig(action): SUBDIRS -= \
   qguiaction \
   qguiactiongroup

!qtConfig(highdpiscaling): SUBDIRS -= qhighdpiscaling

!qtConfig(opengl): SUBDIRS -= qopenglwindow

android|uikit: SUBDIRS -= qclipboard
