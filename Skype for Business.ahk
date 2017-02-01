#IfWinActive ahk_class LyncConversationWindowClass

; turn Enter into Shift+Enter
Enter::
SendInput, +{ENTER}
return

; turn Ctrl+Enter into Enter
^Enter::
SendInput, {ENTER}
return
