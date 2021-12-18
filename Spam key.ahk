#SingleInstance Force
Toggle = 0
#MaxThreadsPerHotkey 2
AppsKey & Insert::
InputBox, key, Spam key, Enter key or phrase to spam. Use AppsKey+Delete., , 330, 130
InputBox, time, Spam key, Enter Time Between spammed keys in ms., , 330, 130
return 

AppsKey & Delete::
    Toggle := !Toggle
     While Toggle{
        Send, %key%
        Sleep %time%
    }
return