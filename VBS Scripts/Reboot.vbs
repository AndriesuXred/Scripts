Set OpSysSet = GetObject("winmgmts:{authenticationlevel=Pkt," _
     & "(Shutdown)}").ExecQuery("select * from Win32_OperatingSystem where "_
     & "Primary=true")
for each OpSys in OpSysSet
    retVal = OpSys.Reboot()
next