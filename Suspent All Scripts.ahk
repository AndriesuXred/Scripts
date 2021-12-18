Process, Priority, SuspentAllScripts.exe , High

DetectHiddenWindows, On 

#SingleInstance Force

WinGet, IDList ,List, ahk_class AutoHotkey

>^F12::
Loop %IDList%

  {

  ID:=IDList%A_Index%

  WinGetTitle, ATitle, ahk_id %ID%

  IfNotInString, ATitle, %A_ScriptName%

    {

    PostMessage, 0x111, 65305,,, %ATitle%  ; Suspend.

    PostMessage, 0x111, 65306,,, %ATitle%  ; Pause.

    }

  }
  
  #Persistent
ToolTip, Toggled All Scipts.
SetTimer, RemoveToolTip, -1000
return

RemoveToolTip:
ToolTip
return

Return
