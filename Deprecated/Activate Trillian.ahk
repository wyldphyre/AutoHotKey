;When you press WindowsKey+C, activates Trillian if it running
#+c::
if WinExist("Trillian")
{
  WinActivate
}
return