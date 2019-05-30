#NoEnv
SetWorkingDir, %A_ScriptDir%
return

; WindowsKey+Ctrl+Shift which when followed by key combination in launcher.ini triggers actions
+^F12::
  Input, command, L2
  IniRead, ProgramName, launcher.ini, Commands, %command%
  Run %ProgramName%
return