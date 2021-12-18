#Persistent
#SingleInstance, Force
#NoEnv
#NoTrayIcon

ListLines, Off
SetBatchLines,-1

ScriptName = System Timer

;------( Gui )----------------------------------------------------------------

	Gui, Add, GroupBox, x10 y10 w420 h100, Time (Mins)
	Gui, Font, S15 CBlack
	Gui, Add, Edit, x20 y30 w400 h40 gTimer_Preview vTimer_Minutes, 5
	Gui, Font, S9
	Gui, Add, DropdownList, w400 vTimer_Action, Sleep|Hibernate|Reboot|Shutdown|
	Gui, Font, S15 W600
	Gui, Add, Text, x15 w410 Center +BackGroundTrans, Your chosen action will be executed in
	Gui, Font, S40, Lucida Console
	Gui, Add, Text, x15 w410 Center +BackGroundTrans vTimer_Update, 0:05:00
	Gui, Font, S12 W400
	Gui, Add, Button, x20 w90 Center gTimer_Start, Start
	Gui, Add, Button, x+10 yp w90 Center gTimer_Pause, Pause
	Gui, Add, Button, x+10 yp w90 Center gTimer_Stop, Stop
	Gui, Add, Button, x+10 yp w90 Center gTimer_Exit, Exit
	Gui, -SysMenu
	Gui, Show, , % ScriptName
	ShutdownGui=1
Return

;------( Convert input into HH:MM:SS for prevew

Timer_Preview:
	Gui, Submit, Nohide
	If !! Timer
	{
		SetTimer, Timer_Start, Off
		MsgBox, ,% ScriptName, Shutdown Timer Stopped. Restart timer with new time
		Timer=
	}
	Timer_Update:="", Timer_UpdateLast:="", TimeSet:="", Flash:="", PauseTime:=""
	SetFormat, Float, 0.0
	TimeSet:=A_TickCount, TimeSet:=FormatSeconds(((Timer_Minutes*60*1000) - (A_TickCount - TimeSet))/1000)
	If TimeSet = :00:00
		GuiControl, Text, Timer_Update, 0:00:00
	Else
		GuiControl, Text, Timer_Update, % TimeSet
Return

;------( Start

Timer_Start:
	If Pause
	{
		GoSub, Timer_Pause
		Return
	}
	If ! TimerRunning ; Whether the Timer is ON
	{
		Gui, Submit, Nohide
		If (!Timer_Minutes || !Timer_Action)
		{
			SetTimer, Timer_Start, Off
			MsgBox, ,% ScriptName, No time or action input.
		}
		Else
		{
			TimeSet:=A_TickCount
			Timer_Minutes:=(Timer_Minutes * 60) * 1000
			SetTimer, Timer_Start, 50
			TimerRunning := 1
		}
	}
	Else
	{
		SetFormat, Float, 0.0

		Timer_Update:=FormatSeconds((Timer_Minutes - (A_TickCount - TimeSet))/1000)

		If (Timer_Update="" || Timer_Update <> Timer_UpdateLast)
		{
			GuiControl, Text, Timer_Update, % Timer_Update
			Timer_UpdateLast:=Timer_Update
		}
		If % (A_TickCount - TimeSet) > Timer_Minutes
		{
			SetTimer, Timer_Start, Off

			If Timer_Action=Sleep
				DllCall("PowrProf\SetSuspendState", "int", 0, "int", 1, "int", 1)
			If Timer_Action=Hibernate
				DllCall("PowrProf\SetSuspendState", "int", 1, "int", 1, "int", 1)
			If Timer_Action=Reboot
				Shutdown, 6
			If Timer_Action=Shutdown
				Shutdown, 5
		}

		; Flash Window
		If (Timer_Minutes - (A_TickCount - TimeSet))/1000 < 60
		{
			If ! Flash
				WinSet, Alwaysontop, On, % ScriptName
			If (Flash="" || (A_TickCount-Flash) > 400)
			{
				Gui, Flash
				Flash:=A_TickCount
			}
		}
	}
Return

;------( Pause

Timer_Pause:
	If % Pause:= (Pause = "") ? "1" : ""
	{
		SetTimer, Timer_Start, Off
		PauseTime:=A_TickCount
	}
	Else
	{
		TimeSet:=TimeSet+(A_TickCount-PauseTime), PauseTime:=""
		SetTimer, Timer_Start, 50
	}
Return

;------( Stop

Timer_Stop:
	Reload
Return

;------( Exit

Timer_Exit:
	ExitApp
Return

;------( Functions )----------------------------------------------------------

FormatSeconds(NumberOfSeconds) {
	Time = 19990101
	Time += %NumberOfSeconds%, seconds
	FormatTime, mmss, %time%, mm:ss
	Return NumberOfSeconds//3600 ":" mmss
}