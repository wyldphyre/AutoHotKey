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

; Create an empty anonymous delegate for c#
::/+=::
SendInput {RAW} += () => {};
SendInput {LEFT}{LEFT}{LEFT}{LEFT}{ENTER}{RIGHT}{ENTER}{UP}{RIGHT}{ENTER}
return

; Immediately replace >> with =>
:*:>>::=>
return

; Context shortcut macro
:*:/cc::
SendInput Context => Context
return

; create a Context => Context for use in a linq expression
;  :*:>>::
;  SendInput {BACKSPACE}
;  SendInput {Shift Down}{Control Down}{Left}{Shift Up}{Control Up}^c
;  SendInput ^v => ^v
;  return

; Start a region
::#r::
SendInput {RAW}#
SendInput region{SPACE}
return

; End a region
:*:#er::
SendInput {RAW}#endregion
return