#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



 F5::Pause

 F3::
Loop {
 ;Village Start
 Sleep 1000,
 Send, k
 Click 1575, 625
 Sleep 50
 Click 1575, 625
 Sleep 50
 Send, {,}
 Sleep 50
 Send, {/}
 Sleep 50
 Send, {,}
 Sleep 50
 Send, {/}
 ;Village end
 ;Sniper Start
 Send, z
 Click 1520, 550
 Sleep 50
 Click 1520, 550
 Sleep 50
 Send, {/}
 Sleep 50
 Send, {/}
 Sleep 50
 Send, {/}
 Sleep 50
 Send, {/}
 Sleep 50
 Send, {.}
 Sleep 50
 Send, {.}
 ;Sniper end
 ;2 random clicks in case of level up
 Click, 850, 550
 Sleep 100
 Click, 850, 550
 Sleep 100
 ;Alch Start
 Send, f
 Click, 1565, 480
 Sleep 50
 Click, 1565, 480
 Sleep 50
 Send, {,}
 Sleep 50
 Send, {,}
 Sleep 50
 Send, {,}
 Sleep 50
 Send, {,}
 Sleep 50
 Send, {.}
 Sleep 50
 Send, {.}
 ;Alch End
 Sleep 50
 Send {Space}
 Sleep 50
 Send {Space}
 Sleep 310000
 Click 970, 910
 Sleep 500
 Click 1220, 840
 Sleep 500
 Click 1600, 35
 Sleep 1500
 Click 1600, 35
 Sleep 1500
 Click 1080, 840
 Sleep 500
 Click 1140, 730
 Sleep 500
 }
return

 
 
 

 
