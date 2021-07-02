; This file contains assorted hotstrings for text replacement

; Short helper abbreviation expansions
;:c:atm::at the moment
;:c:Tks::Thanks
;:c:tks::thanks
;:c:fyi::FYI
;:c:/ccare::Communicare

; Verbose timestamp
;:c:/dtv::
;FormatTime, xx,, dd MMM yyyy ; This is one type of the date format
;FormatTime, zz,, hh:mm:ss tt ; This is one type of the time format
;SendInput, %xx% %zz%
;return

; Compact timestamp
;:c:/dtc::
;FormatTime, xx,, yyyy-MM-dd ; This is one type of the date format
;FormatTime, zz,, hh:mm ; This is one type of the time format
;SendInput, %xx% %zz%
;return

; Verbose date
;:c:/dv::
;FormatTime, xx,, dd MMM yyyy ; This is one type of the date format
;SendInput, %xx%
;return

; Day and date
;:c:/dd::
;FormatTime, xx,, dddd yyyy-MM-dd
;SendInput, %xx%
;return

; Compact date
;:c:/dc::
;FormatTime, xx,, yyyy-MM-dd ; This is one type of the date format
;SendInput, %xx%
;return

;Work related
:c:@@::craig.reynolds@health.telstra.com
;:c:TD::TODO:
;:c:/cic::Can I call?
;:c:/eyes::👀
;:c:/ell::…

