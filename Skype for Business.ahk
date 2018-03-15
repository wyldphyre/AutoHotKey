if (WinActive("ahk_class LyncTabFrameHostWindowClass") or WinActive("ahk_class LyncConversationWindowClass"))
{
; Shortcuts to provide more sensible behaviour in Skype for Business

; turn Enter into Shift+Enter
Enter::
SendInput, +{ENTER}
return

; turn Ctrl+Enter into Enter
^Enter::
SendInput, {ENTER}
return
}