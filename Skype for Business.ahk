#IfWinActive ahk_class LyncTabFrameHostWindowClass

; Shortcuts to provide more sensible behaviour in Skype for Business

; turn Enter into Shift+Enter
Enter::
SendInput, +{ENTER}
return

; turn Ctrl+Enter into Enter
^Enter::
SendInput, {ENTER}
return
