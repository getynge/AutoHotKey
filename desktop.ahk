#Requires AutoHotkey v2.0
#SingleInstance
#Include support\definitions.ahk

; bring a program to the foreground if it exists, otherwise launch it
RaiseProgram(name,launcher)
{
    if(!WinExist(name)) {
        pid := 0
        Run launcher,,,&pid
        WinWait name,,1
    }
    WinActivate name
}

F24 & K::^#Right
F24 & J::^#Left
F24 & W::RaiseProgram("Vivaldi", browser)
F24 & D::RaiseProgram("Discord", discord)
F24 & T::RaiseProgram("Microsoft To Do", microsoftTodo)
F24 & G::Run EnvGet("USERPROFILE") . "\Desktop\Games"
F24 & V::Run EnvGet("USERPROFILE") . "\Desktop\Development"
#Enter::{
     WinActivate "Program Manager" ; windows terminal process will not be brought to foreground unless this is run first, not sure why
     RaiseProgram("Windows Terminal", windowsTerminal)
 }