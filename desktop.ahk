#Requires AutoHotkey v2.0
#SingleInstance
#Include support\definitions.ahk

; bring a program to the foreground if it exists, otherwise launch it
raiseProgram(name,launcher) {
    if(!WinExist(name)) {
        pid := 0
        Run launcher,,,&pid
        WinWait name,,1
        WinActivate
    } else {
        WinActivate name
    }
}

raiseFolder(name) {
    Run name
    WinWait name,,1
    WinActivate
}

F24 & K::^#Right
F24 & J::^#Left
F24 & D::raiseProgram("Discord", discord)
F24 & T::raiseProgram("Microsoft To Do", microsoftTodo)
F24 & G::raiseFolder(EnvGet("USERPROFILE") . "\Desktop\Games")
F24 & V::raiseFolder(EnvGet("USERPROFILE") . "\Desktop\Development")
#InputLevel 1
F24 & W::
{
    if(WinActive("Vivaldi")) {
        Send "^t"
    } else {
        RaiseProgram("Vivaldi", browser)
    }
}
F24 & Esc::
{
    if(GetKeyState("LAlt")) {
        Send "~"
    } else {
        Send "``"
    }
}
#InputLevel 0
#Enter::
{
     WinActivate "Program Manager" ; windows terminal process will not be brought to foreground unless this is run first, not sure why
     RaiseProgram("Windows Terminal", windowsTerminal)
 }