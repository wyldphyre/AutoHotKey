#IfWinActive ahk_class TEditWindow

; provide an equivalent to Ctrl-a (select all) within the Delphi IDE
~^a::
SendInput, ^{HOME}^+{END}
return

; provide an equivalent to Ctrl-w to close a file in the Delphi IDE
~^w::
SendInput, ^{F4}
return

; WinKey+P: make a property, based on an F* private field
#p::
SendInput {HOME}
SendInput ^{RIGHT}
SendInput ^+{RIGHT}
SendInput +{LEFT 3}
SendInput ^c
SendInput ^{LEFT}
SendInput {DEL}
SendInput Property{SPACE}
SendInput {END}
SendInput {Left}
SendInput {SPACE}Read{SPACE}^v{SPACE}Write{SPACE}^v
return

; WinKey+Shift+P: make a read only property, based on an F* private field, using the Windows + Shift + P key combo
#+p::
SendInput {HOME}
SendInput ^{RIGHT}
SendInput ^+{RIGHT}
SendInput +{LEFT 3}
SendInput ^c
SendInput ^{LEFT}
SendInput {DEL}
SendInput Property{SPACE}
SendInput {END}
SendInput {Left}
SendInput {SPACE}Read{SPACE}^v
return

; Ctrl+Start+P: make a property with Get and Set methods, based on an F* private field
^#p::
SendInput {HOME}
SendInput ^{RIGHT}
SendInput {RIGHT}
SendInput ^+{RIGHT}
SendInput +{LEFT 3}
SendInput ^c
SendInput ^{LEFT}
SendInput {DEL}
SendInput Property{SPACE}
SendInput {END}
SendInput {Left}
SendInput {SPACE}Read{SPACE}Get^v{SPACE}Write{SPACE}Set^v
return

; WinKey+C: Instantiate and object based on a variable declaration
#c::
SendInput {HOME}^{RIGHT 2}{LEFT}=^{RIGHT 2}{LEFT}.Create
SendInput ^{LEFT 3}+^{RIGHT}+{LEFT 4}
SendInput ^c
SendInput {END}{Return}
SendInput ^v.Free;
SendInput {UP}{END}{LEFT}
SendInput ^{LEFT 3}+^{RIGHT}+{LEFT 4}
Return

; Ctrl+Alt+D: duplicate the current line
^!d::
SendInput {HOME}+{DOWN}^c{HOME}^v{UP}
return

; map Ctrl+Delete to Ctrl+t
^Del::
SendInput ^t
return

; insert test code warning hotstring
;#IfWinActive, ahk_class TEditWindow
::testcodewarning::// WARNING: The following line of code is for testing purposes, and should not exist in booked in code.


; Delphi text replacement shortcuts
;===================================

;Create assertion stubs for getters and setters
:o:asserti::Assert(Invariants('', , , ''));{left 12}
:o:assertc::Assert(Condition(, '', ''));{left 11}