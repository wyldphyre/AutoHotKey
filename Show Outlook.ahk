SetTitleMatchMode 2 ; title can contain the search text

; This script opens or focuses the Safe console

; Handle shortcut in Windows Explorer
#IfWinActive ahk_class CabinetWClass
; Ctrl+Alt+Shift+S: open the current file in Safe
if WinExist("Inbox - craigr@kestral.com.au")
  WinActivate
ExitApp
return

ExitApp
