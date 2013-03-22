; Provide additional functionality to Windows Explorer

;SetTimer, WatchActiveWindow, 300
;return

;WatchActiveWindow:
;IfWinActive, ahk_class CabinetWClass
;    Suspend Off
;else
;    Suspend On
;;return

#IfWinActive ahk_class CabinetWClass
; Ctrl+Alt+Shift+S: open the current file in Safe using a short cut in VS to get the file path
^!+s::
if WinExist("KESTRAL\craigr@vcs.kestral.com.au - Obelisk Safe Console 1.1")
{
  ; Get current path in Explorer (works even when Address bar is hidden)
  Send ^c
  clipboard = "%clipboard%" ; wrap the clipboard contents in double quotes
  ;ClipWait
  ;MsgBox Control-C copied the following contents to the clipboard:`n`n%clipboard%
  WinActivate
  Send ^v
}
else
  Run "C:\Program Files (x86)\Obelisk\safe\Console\1.1\SafeConsole.exe"
return