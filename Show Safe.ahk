SetTitleMatchMode 2 ; title can contain the search text

; This script opens or focuses the Safe console

; Handle shortcut in Windows Explorer
#IfWinActive ahk_class CabinetWClass
; Ctrl+Alt+Shift+S: open the current file in Safe
if WinExist("KESTRAL\craigr@vcs.kestral.com.au - Obelisk Safe Console 1.1")
  WinActivate
else
  Run "C:\Kestral\Safe\Console\1.1\SafeConsole.exe"
ExitApp
return

ExitApp
