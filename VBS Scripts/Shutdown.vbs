set wshshell = wscript.CreateObject("wscript.shell")
wshshell.run "shutdown.exe -s -t 6"
wscript.sleep 2000