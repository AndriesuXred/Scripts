#Persistent

;these are the variables. edit the part after the equals (=)

key = Numpad0 ;This is the key you want to press to start, end and use the legacy version.

network_adapter_name := "Ethernet"

delay := 2600 ;This is the delay. Set it the whatever you like. no need to change unless neccesary (legacy)

locationX := 90 ;these are the cordinates of press s to spin. dont worry about these if you are on 1080p

locationY := 40

Hotkey,%key%,button
Hotkey,^!%key%,buttonexit
Hotkey,^%key%,buttonlegacy ;i know this is inefficent
return

button: ;this is the key you want to press to start the script. huge shoutout goes to u/gyfen . He made all the pixel detection stuff. i modified a little bit to make it simpler.

SendInput {enter down}
sleep 10
SendInput {enter up}

    Loop
    {
        PixelGetColor, color, %locationX%, %locationY%, RGB
        If (color = 0xE5E5E5)
        {
		sleep %delay%
		Send,{s down}
		Send,{s up}
            Break
        }
    }
    Return

buttonlegacy: ;this is the legacy version. If you dont want to go fullscreen borderless

sleep delay
Send,{s down}
Send,{s up}
return
	
;This is the network disabler part huge thanks to u/CRlME

^f5::
run, *runas %comspec% /c netsh interface set interface name="%network_adapter_name%" admin=disabled,,hide 
return	

^f6::
run, *runas %comspec% /c netsh interface set interface name="%network_adapter_name%" admin=enabled,,hide
return


buttonexit:

ExitApp ;this is to terminate the script press contol, alt and your key.