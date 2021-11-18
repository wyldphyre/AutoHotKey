SetTitleMatchMode, 2 ; Match anywhere in title
#IfWinNotActive ,SQL Server Management Studio

; This file contains assorted hotstrings for text replacement

; Short helper abbreviation expansions
:c:atm::at the moment
:c:Tks::Thanks
:c:tks::thanks
:c:Hth::Hope that helps
:c:hth::hope that helps
:c:Ymmv::Your mileage may vary
:c:ymmv::your mileage may vary
:c:fyi::FYI
:c:/ccare::Communicare

; Verbose timestamp
:c:/dtv::
FormatTime, xx,, dd MMM yyyy ; This is one type of the date format
FormatTime, zz,, hh:mm:ss tt ; This is one type of the time format
SendInput, %xx% %zz%
return

; Compact timestamp
:c:/dtc::
FormatTime, xx,, yyyy-MM-dd ; This is one type of the date format
FormatTime, zz,, hh:mm ; This is one type of the time format
SendInput, %xx% %zz%
return

; Verbose date
:c:/dv::
FormatTime, xx,, dd MMM yyyy ; This is one type of the date format
SendInput, %xx%
return

; Day and date
:c:/dd::
FormatTime, xx,, dddd yyyy-MM-dd
SendInput, %xx%
return

; Compact date
:c:/dc::
FormatTime, xx,, yyyy-MM-dd ; This is one type of the date format
SendInput, %xx%
return

; time
:c:/t::
FormatTime, zz,, hh:mm tt ; This is one type of the time format
SendInput, %zz%
return

; Star Ratings
:c:5stars::
Send {U+2605}{U+2605}{U+2605}{U+2605}{U+2605}
return
:c:4stars::
Send {U+2605}{U+2605}{U+2605}{U+2605}{U+2606}
return
:c:3stars::
Send {U+2605}{U+2605}{U+2605}{U+2606}{U+2606}
return
:c:2stars::
Send {U+2605}{U+2605}{U+2606}{U+2606}{U+2606}
return
:c:1stars::
Send {U+2605}{U+2606}{U+2606}{U+2606}{U+2606}
return
:c:0stars::
Send {U+2606}{U+2606}{U+2606}{U+2606}{U+2606}
return

; Icons for Note Taking
:c*:/task::✔
:c*:/meeting::📞
:c*:/note::✍

; Unicode Shortcuts
:c:/heart::{U+2665}
:c:/star::{U+2605}
:c:/skull::{U+2620}
:c:/tick::✓
:c:/cross::✘
:c:/triangleup::▲
:c:/triangledown::▼
:c:/triangleleft::◀
:c:/triangleright::▶

;Communications
:c:@@::craig@wyldphyre.com
:c:/cic::Can I call?

;Work related
:c:TD::TODO:
:c:/eyes::👀
:c:/ell::…

:*:]d::  ; This hotstring replaces "]d" with the current date via the commands below.
FormatTime, CurrentDateTime,, yyyy-MM-dd  ; It will look like 2005-09-01
SendInput %CurrentDateTime%
return

;Create an empty Delphi 5 IFDEF declaration
;:o:ifdefd5::{{}$IFDEF VER130{}}{RETURN}{{}$ELSE{}}{ENTER}{{}$ENDIF{}}{UP}{HOME}{ENTER}{UP}

;:o:$endif::{{}$IFDEF{}}

;Emoticons
::/eshrug::
SendInput ¯\_(ツ)_/¯
return
