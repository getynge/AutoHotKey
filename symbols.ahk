#Requires AutoHotkey v2.0
#SingleInstance

Insert::
{
    ih := InputHook("L1T3") ; wait at most three seconds for one keystroke
    ih.Start()
    ih.Wait()
    switch ih.Input  
    {
    case "=":
        Send "≡"
    case "+":
        Send "±"
    case "-":
        Send "∓"
    case "!":
        Send "≠"
    case ">":
        Send "≥"
    case "<":
        Send "≤"
    case "*":
        Send "⋅"
    case "/":
        Send "÷"
    case "%":
        Send "°"
    case ".":
        Send "∘"
    case "~":
        Send "≈"
    case "^":
        Send "⌢"
    case "?":
        Send "‽"
    case ":":
        Send "≔"
    case "c":
        Send "©"
    case "d":
        Send "∆"
    case "e":
        Send "∈"
    case "v":
        Send "∀"
    case "s":
        Send "∑"
    case "g":
        Send "φ"
    case "p":
        Send "π"
    case "P":
        Send "∏"
    case "i":
        Send "∞"
    case "t":
        Send "™"
    case "r":
        Send "®"
    case "f":
        Send "→"
    Default:
        return
    }
}