>^Numpad0::Run,  "C:\Users\Andriesu\AppData\Roaming\Microsoft\Windows\Network Shortcuts\Note 9"

>^Numpad1::Run  "C:\Users\Andriesu\Downloads"

>^Numpad2::Run  "X:\Games"

>^Numpad3::Run  "%appdata%"

>^Numpad4::Run  "C:\Users\Andriesu\Pictures\Screenshots\2021-11"

>^Numpad5::Run  "C:\Users\Andriesu\Videos"

>^Numpad6::Run  "C:\Users\Andriesu\Documents\Blends\Projects"

>^Numpad7::Run  "X:\Apps\LiveSplit\LiveSplit.exe"


>^Numpad8::Run, cmd, X:\Apps\NGROK
Sleep 500
Send, ngrok tcp -region=eu 25565{Enter}
return
>^Numpad9::
Run, %comspec% /k "X:\Games\Minecraft\Server\Spigot 1.17.1\StartServer.bat", X:\Games\Minecraft\Server\Spigot 1.17.1\
return
>^NumpadEnter:: Run, "D:\Scripts"
<^F1::
Send, Andriesu@mail.com
return

#Del::FileRecycleEmpty 
