These are the autohotkey scripts I use on my own machine.

The below rules and conventions are for personal reference so my scripts feel consistent to use and modify

# Usage

## Input device recommendations

F24, F23, and F22 should be remapped to a single key you can easily get to in whatever software you use for remapping (The DPI switch on my mouse is remapped to F24 for example)
Hotkeys will not use the number row up to 0, so if you have temporary remaps like hypershift the number row is a safe place to put those remaps

## Other software recommendations

Microsoft Powertoys is a good companion to these scripts, espcially the launcher hotkeys in desktop.ahk. I essentially use those hotkeys as a kind of makeshift game overlay, in conjunction with a FancyZones layout on my primary monitor that makes sure these makeshift overlays don't cover too much of the screen, for this reason I play most games in fullscreen windowed to make sure they switch as gracefully as possible.

I personally treat folders on my desktop as a collection of "launchers" and tend not to put anyhthing else on there, hotkeys that open folders will open these launcher folders that are located on the desktop. All my games are in Desktop\Games and all my graphical development tools are in Desktop\Development.

At the time of writing this README the windows key is not being remapped in any scripts, but this may change in the future.

# Development

## Conventions

* Hotkeys using F13-F24 will not use number row keys up to and including 0
* Hotkey combinations will not contain caps lock
* F24 is used as a modifier key for global hotkeys
* F24 will define an application specific hotkey if and only if it opens said application and the application is already in the foreground
* Application specific hotkeys will be in HotIf blocks except in the above case
* F24 hotkeys that also function as application specific hotkeys will not include modifiers for performing application-specific purposes (e.g. holding down shift to close a tab instead of open one)
* F23 and F22 are used for application-specific hotkeys
* Applicaiton specific hotkeys that use neither F23 or F22 will use the windows key
* Application specific hotkeys may override the following normally reserved windows shortcuts:
  * Win + B (focus first taskbar icon)
  * Win + C (windows copilot)
  * Win + F (open feedback hub)
  * Win + K (open cast from quick settings)
  * Win + M (minimize all windows)
  * Win + Shift + M (restore minimzed windows)
  * Win + O (lock device orientation)
  * Win + S (open search)
  * Win + U (open accessibility settings)
  * Win + Shift + V (focus a notification)
  * Win + W (open widgets)
  * Win + Y (switch input between mixed reality)
  * Win + Period (open emoji panel (use Win + Semicolon instead))

## Style Conventions

* All block definitions, with the sole exception of hotkey definitions, put curly braces on the same line as the rest of the expression
* Single statement hotkeys do not go in their own block
* Script local/included names are defined and referenced in camelCase
* Standard/builtin names are refenced in PascalCase
* The keywords if, for, while, switch, case, and default are used in lowercase