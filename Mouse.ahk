#IfWinNotActive, Red Dead Redemption 2

;Side Buttons Copy/Paste
XButton1:: Send ^c
XButton2:: Send ^v

;Side Buttons + Wheel to move window on the left/right screen
XButton1 & MButton::Send, #+{Right}
XButton2 & MButton::Send, #+{Left}

;Side Button + Wheel to change volume
XButton1 & WheelUp:: Send, {Volume_up}
XButton1 & WheelDown:: Send, {Volume_down}

#IfWinNotActive, Minecraft
{
;Dpi Up Media Pause
Pause::Send       {Media_Play_Pause}
return
}


