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

;Work related
:c:TD::TODO:
;:c:patchtemplate::Release Version: 3.1.1{ENTER}Urgency: Next Build{ENTER}Reviewed For Patching By: {ENTER}{ENTER}Description of the change:{ENTER}--------------------------{ENTER}{ENTER}Files:{ENTER}------{ENTER}{ENTER}Target Testing:{ENTER}---------------
:c:pacs::PACS
;:c*:karisma ::Karisma{Space}
:c*:hl7 ::HL7{Space}
;:c:api::API
;:c:ceo::CEO
;:c:url::URL
;:c:urls::URLs
;:c:csv::CSV
;:c:sdk::SDK
;:C:sms::SMS
;:c*:k/::Karisma.
;:c*:amz::Adv.Money.Zero
:c*:hbcis::HBCIS
:c:mhr::MHR
:c:mhrx::My Health Record
:c:@@::craig.reynolds@health.telstra.com
:c:/cic::Can I call?
:c:/eyes::👀

; Development related
:cr*:ftm::ForgeTemplateMap

; Shortcuts for ResophNotes
;:cr*:;sql::sql -
;:cr*:;td::todo -

;:c:endif::
;sendRaw {$ENDIF}
;return

:*:]d::  ; This hotstring replaces "]d" with the current date via the commands below.
FormatTime, CurrentDateTime,, yyyy-M-d  ; It will look like 2005-9-1
SendInput %CurrentDateTime%
return

; Replace 'AP.' with 'ApplicationPlan.'
;==============================================
;::ap::ApplicationPlan

; Morning prep work log entry shortcut
:cr*:/mprep::Morning prep and email.

;Create an empty Delphi 5 IFDEF declaration
;:o:ifdefd5::{{}$IFDEF VER130{}}{RETURN}{{}$ELSE{}}{ENTER}{{}$ENDIF{}}{UP}{HOME}{ENTER}{UP}

;:o:$endif::{{}$IFDEF{}}

; Create Kestral Patch Block. For use when making changes in 3rd party code
;::/patch::
;SendInput ^b^uPatch {RAW}#
;SendInput :^u^b{ENTER}
;SendInput {UP}{END}{LEFT}
;return

; Create Kestral Patch Testing Block. For use when making changes in 3rd party code
;::/tpatch::
;SendInput ^b^uTesting Patch {RAW}#
;SendInput :^u^b{ENTER}
;SendInput {UP}{END}{LEFT}
;return

::/eshrug::
SendInput ¯\_(ツ)_/¯
return
