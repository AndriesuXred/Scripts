!P::Suspend, Toggle
Toggle = 0
#MaxThreadsPerHotkey 2

!Lbutton::
    Toggle := !Toggle
     While Toggle{
        Click
        Sleep 0
    }
return
Toggle = 0
#MaxThreadsPerHotkey 2

!RButton::
    Toggle := !Toggle
     While Toggle{
        MouseClick,right
        Sleep 0
    }
return
