SetTitleMatchMode 2 ; title can contain the search text

; This scripts provides shortcuts that can be used within various applications to open the current file within Obelisk Safe
; Supported Applications:
;  - Windows Explorer
;  - Notepad++
;  - Visual Studio // relies on VS having a shortcut that will put the current files path on the clipboard
;  - Sublime Text

; Handle shortcut in Windows Explorer
#IfWinActive ahk_class CabinetWClass
; Ctrl+Alt+Shift+S: open the current file in Safe
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
  Run "C:\Kestral\Safe\Console\1.1\SafeConsole.exe"
return

; Handle shortcut in Notepad++
#IfWinActive Notepad++
; Ctrl+Alt+Shift+S: open the current file in Safe
^!+s::
if WinExist("KESTRAL\craigr@vcs.kestral.com.au - Obelisk Safe Console 1.1")
{
  Send !e{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Right}{Enter}
  WinActivate
  Send ^v
}
else
  Run "C:\Kestral\Safe\Console\1.1\SafeConsole.exe"
return

; Handle shortcut in Visual Studio
#IfWinActive Microsoft Visual Studio
; Ctrl+Alt+Shift+S: open the current file in Safe using a short cut in VS to get the file path
^!+s::
if WinExist("KESTRAL\craigr@vcs.kestral.com.au - Obelisk Safe Console 1.1")
{
  SendInput ^!k ; VS shortcut that puts the current files path on the clipboard; File.CopyFullPath is assigned to Ctrl+ALt+k
  Sleep, 250
  WinActivate
  Send ^v
}
else
  Run "C:\Kestral\Safe\Console\1.1\SafeConsole.exe"
return

; Handle shortcut in Sublime Text
#IfWinActive Sublime Text
; Ctrl+Shift+S: open the current file in Safe
^+s::
Send, {AppsKey}
Sleep, 50
SendInput, {UP}{UP}{UP}{ENTER}
if WinExist("KESTRAL\craigr@vcs.kestral.com.au - Obelisk Safe Console 1.1")
{
  WinActivate
}
else
{
  Run "C:\Kestral\Safe\Console\1.1\SafeConsole.exe"
  Sleep, 1500
}
Send ^v
return

