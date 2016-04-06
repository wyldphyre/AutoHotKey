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

; Trigger tail on the selected file
^+t::
Send ^c
Run "C:\Software\unix\tail.exe" -f "%clipboard%"
return