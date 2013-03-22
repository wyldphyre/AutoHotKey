^+s::
if WinExist("KESTRAL\craigr@vcs.kestral.com.au - Obelisk Safe Console 1.1")
{
  Send {AppsKey}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Enter}
  Sleep, 250
  WinActivate
  Send ^v
}
else
  Run "C:\Program Files (x86)\Obelisk\safe\Console\1.1\SafeConsole.exe"
return

^!+o::
if WinExist("KESTRAL\craigr@vcs.kestral.com.au - Obelisk Safe Console 1.1")
{
  Send {AppsKey}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Enter}
  Send {AppsKey}o
  Sleep, 250
  WinActivate
  Send ^v
  Send ^o
  Send {Enter}
  Send !{Tab}
}
else
  Run "C:\Program Files (x86)\Obelisk\safe\Console\1.1\SafeConsole.exe"
return