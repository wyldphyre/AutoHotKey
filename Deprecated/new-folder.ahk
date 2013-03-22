; New folder script -- Creates new folder 
; in Windows Explorer with Ctrl-N

#IfWinActive, ahk_class CabinetWClass

^n::
send !f
loop ;wait until on new menu item
{
	StatusBarGetText, status
	IfInString, status, new
	{
		break
	}
	send {down}
}
send {right}{enter}
return
