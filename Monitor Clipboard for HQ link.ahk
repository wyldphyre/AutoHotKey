; Monitor the clipboard and if a hq:// URL is detected, have the system open it.

; TODO: It would probably be a good idea to check for the presence of HQ on the system. 
; if HQ isn't found, then notify the user and quit.
LastContent := Clipboard

while True
{
	ClipWait
	ClipboardContent = %clipboard%

	if ClipboardContent <> %LastContent%
	{	
		LastContent := ClipboardContent
		;MsgBox, , , %LastContent%

		;SearchPos = InStr(%ClipboardContent%, "hq://")
		StringGetPos, SearchPos, ClipboardContent, hq://
		;MsgBox, %SearchPos%
		if SearchPos = 0
		{
		  MsgBox, , test, result is zero
		}		
	}

	Sleep, 1000
}
