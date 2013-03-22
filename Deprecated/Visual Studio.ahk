SetTitleMatchMode 2 ; title can contain the search text

;SetTimer, WatchActiveWindow, 300
;return

;WatchActiveWindow:
;SetTitleMatchMode 2 ; title can contain the search text
;IfWinActive, Microsoft Visual Studio
;    Suspend Off
;else
;    Suspend On
;return

#IfWinActive Microsoft Visual Studio
; Ctrl+Alt+Shift+S: open the current file in Safe using a short cut in VS to get the file path
^!+s::
if WinExist("KESTRAL\craigr@vcs.kestral.com.au - Obelisk Safe Console 1.1")
{
  SendInput ^+p
  Sleep, 250
  WinActivate
  Send ^v
}
else
  Run "C:\Program Files (x86)\Obelisk\safe\Console\1.1\SafeConsole.exe"
return
