; Hotstrings for text replacement

:c:atm::at the moment 
:c:Tks::Thanks
:c:tks::thanks
:c:Hth::Hope that helps
:c:hth::hope that helps
:c:Ymmv::Your mileage may vary
:c:ymmv::your mileage may vary

;Work related
:c:PS::PowerScribe
:c:TD::TODO:
:C:w/::with
:C:W/::With
:c:===::====================
:c:mrm::Management Review Meeting
:c:patchtemplate::Release Version: 3.1.1{ENTER}Urgency: Next Build{ENTER}Reviewed For Patching By: {ENTER}{ENTER}Description of the change:{ENTER}--------------------------{ENTER}{ENTER}Files:{ENTER}------{ENTER}{ENTER}Target Testing:{ENTER}---------------
:c:pacs::PACS
:c:sql::SQL
:c:dicom::DICOM
:c:hl7connect::HL7Connect
:c:karisma::Karisma
:c:brs::BRS
:c:api::API
:c:bz::Bugzilla
:c:fti::FTI
:c:kb::knowledge base
:c:KB::Knowledge Base
:c:hq::HQ
:c:hqd::HQD
:c:hqt::HQT
:c:kms::KMS
:c:ceo::CEO
:c:ktc::KarismaTimeControllers
:c:tc::TimeController
:c:url::URL
:c:urls::URLs
:c:csv::CSV
:c:sdk::SDK
:c:klge::KLGE
:c:gfc::Get Fit Challenge
:C:sms::SMS
:c*:kdm::Karisma.ForgeDataModel
:c*:kctm::KarismaClient.ForgeTemplateMap
:c*:ktm::Karisma.ForgeTemplateMap

; Development related
:c:pc::PrimeCache
:cr*:{gs}::{ get; set; }
:cr*:{gps}::{ get; private set; }
:cr*:{gs}::{ get; set; }
:cr*:ftm::ForgeTemplateMap

:c:endif::
sendRaw {$ENDIF}
return

:*:]d::  ; This hotstring replaces "]d" with the current date and time via the commands below.
FormatTime, CurrentDateTime,, M/d/yyyy h:mm tt  ; It will look like 9/1/2005 3:53 PM
SendInput %CurrentDateTime%
return

; Replace 'AP.' with 'ApplicationPlan.'
;==============================================
;::ap::ApplicationPlan


;Create an empty Delphi 5 IFDEF declaration
:o:ifdefd5::{{}$IFDEF VER130{}}{RETURN}{{}$ELSE{}}{ENTER}{{}$ENDIF{}}{UP}{HOME}{ENTER}{UP}

:o:$endif::{{}$IFDEF{}}

; Create Kestral Patch Block. For use when making changes in 3rd party code
;:://kp::
;SendInput // -------------------- Start Kestral Patch -------------------- {ENTER}
;SendInput // [] : <reason>{ENTER}
;SendInput // --------------------- End Kestral Patch ---------------------
;SendInput {UP}{HOME}^{RIGHT}{RIGHT}
;return