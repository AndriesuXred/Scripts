Set wshShell =wscript.CreateObject("WScript.Shell")
x=1
do Until x=2 
x=x+1
wscript.sleep 100
wshshell.sendkeys "%{F4}"
Loop