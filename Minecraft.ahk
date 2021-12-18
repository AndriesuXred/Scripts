#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetKeyDelay, 0

#IfWinActive, Minecraft

Pause::
Send, {F3 down}{F4}{F3 up}
return



Numpad0:: 
Send, /
Sleep, 100
Send, gamemode spectator {Enter}
return

Numpad1:: 
Send, /
Sleep, 100
Send, effect clear {Enter}
return

Numpad2:: 
Send, /
Sleep, 100
Send, effect give @p saturation 99999 255 true {Enter}
return

Numpad3:: 
Send, /
Sleep, 100
Send, effect give @p night_vision 99999 255 true {Enter}
return

Numpad4:: 
Send, /
Sleep, 100
Send, effect give @p resistance 99999 255 true {Enter}
return

Numpad5:: 
Send, /
Sleep, 100
Send, effect give @p regeneration 99999 255 true {Enter}
return

Numpad6:: 
Send, /
Sleep, 100
Send, effect give @p strength 99999 255 true {Enter}
return

Numpad7:: 
Send, /
Sleep, 100
Send, setblock ~ ~-1 ~ stone_bricks {Enter}
return

Numpad8:: 
Send, /
Sleep, 100
Send, tp @p ~ ~20 ~ {Enter}
return

Numpad9:: 
Send, /
Sleep, 100
Send, weather clear {Enter}
return

Numpaddiv:: 
Send, /
Sleep, 100
Send, time set day {Enter}
return

Numpadmult:: 
Send, /
Sleep, 100
Send, time set midnight {Enter}
return



