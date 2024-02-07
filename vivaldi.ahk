#Requires AutoHotkey v2.0
#SingleInstance
#HotIf WinActive("Vivaldi")
F23 & W::Send "^!w"
F23 & T::
{
    if(GetKeyState("LShift")) {
        Send "^!+t"
    } else {
        Send "^!t"
    }
}
#HotIf