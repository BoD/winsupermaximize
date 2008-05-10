/*
 * BoD winsupermaximize v1.00.
 *
 * This program and its source are in the public domain.
 * Contact BoD@JRAF.org for more information.
 *
 * Version history:
 * 2008-05-10: v1.00
 */

#SingleInstance force

/*
 * Tray menu.
 */
Menu, tray, NoStandard
Menu, tray, Add, Super maximize window, menuSuperMaximize
Menu, tray, Add, About..., menuAbout
Menu, tray, Add, Exit, menuExit
Menu, tray, Default, Super maximize window

Goto, main

menuAbout:
	MsgBox, 8256, About, BoD winsupermaximize v1.00.`n`nThis program and its source are in the public domain.`nContact BoD@JRAF.org for more information.
return

menuExit:
	ExitApp
return

menuSuperMaximize:
	Send !{Tab} ; go to previously active window (the current active window is the taskbar)
	Sleep, 200
	Goto, main
return


/*
 * Main program.
 */
main:

/*
 * Get the size of the title bar.
 */
SysGet, titleBarSize, 29 ; title bar + y border size
SysGet, yBoderSize, 33
titleBarSize := titleBarSize - yBoderSize


/*
 * Do the actual job.
 */
superMaximize() {
	global titleBarSize
	WinActive("A")
	WinGetPos, , y
	if (y = -titleBarSize) {
		; already supermaximized: we restore the window
		WinRestore
	} else {
		; not supermaximized: we supermaximize it
		WinMaximize
		WinGetPos, x, y, width, height
		WinMove, , , x, -titleBarSize, width, A_ScreenHeight + titleBarSize - y - 1 ; 1 pixel less, to be able to use the auto-hide taskbar
	}
}

/*
 * Do it.
 */
superMaximize()

/*
 * Bind to Win-F11.
 */
#F11::superMaximize()