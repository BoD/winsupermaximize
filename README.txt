BoD winsupermaximize v1.01.

This is a tiny utility that will add an icon in the notification area of the Windows taskbar.

When you double-click on the icon, it will resize the currently active window so the title bar is 
actually above the screen boundaries, thus saving those extra pixels that you don't want to waste.

This is a bit like the "Full Screen" view in IE or Firefox when you press F11, but for any window.

When you double-click it again it will bring back the window to its original size and position.

It also adds a shortcut (Windows key+F11) that does that.

Limitations: 
  * Currently works only if you set up your taskbar as "auto-hide". If you don't, the lower part
    of the window will actually be behind the taskbar.
  * Multi-monitor setup is not supported (the window will always be supermaximized on the main
    monitor even if it was on a secondary monitor).
  * Tested only under Windows XP.

Note: this is actually an AutoHotkey script, compiled into an executable file 
      (see http://www.autohotkey.com/.)

Contact the author: BoD@JRAF.org.

This program and its source are in the public domain.

Version history:
2008-05-12: v1.01
2008-05-10: v1.00