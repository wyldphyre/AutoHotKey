; Time Registration
#Persistent
#SingleInstance,force

REGISTER_FUTURE:
TNowHour := SubStr(A_Now,-5,2)
TNowMin := SubStr(A_Now,-3,2)
TNowSec := SubStr(A_Now,-1,2)
TNowInSec := ((TNowHour*60 + TNowMin) * 60 + TNowSec)

timeParam := "8:00"
TParamHour := RegExReplace(timeParam,"^([0-9]{1,2}):[0-9]{2}$","$1") 
TParamMin := RegExReplace(timeParam,"^[0-9]{1,2}:([0-9]{2})$","$1")
TParamInSec := (TParamHour*60 + TParamMin) * 60

delayInSec := 0

If (TParamInSec > TNowInSec) {
   ;now : 9u00
   ;to run: 9u05
   ;delay = 5min = 9u05 - 9u00
   delayInSec := TParamInSec - TNowInSec
} else {
   ; now : 9u05
   ; to run: 9u00
   ; delay = 24u - 5min = 86400 sec - (9u05 - 9u00)   
   delayInSec := 86400 - ( TNowInSec - TParamInSec)
}

SetTimer, REGISTER_NOW, % delayInSec*-1000 ; convert to millisec and  make negative to denote only run once
TrayTip, Timer configured, Start in %delayInSec%sec at %TParamHour%:%TParamMin%
;MsgBox Timer configured in: %delayInSec% sec at %TParamHour%:%TParamMin%
return

DISABLE_FUTURE:
SetTimer, REGISTER_NOW, Off
return


REGISTER_NOW:
;add code to be executed at exact time you provided
Run, "C:\Development\Kestral\Deployments\KarismaHelpChecker (v3.1.1)\KarismaHelpChecker.exe" /nogui
return