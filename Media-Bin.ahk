; AutoHotkey Media Keys
>^Left::Send        {Media_Prev}
>^Right::Send       {Media_Next}
>^Del::Send  {Volume_Mute}
>^Up::Send   {Volume_Up}
>^Down::Send   {Volume_Down}
;Empty Trash
#Del::FileRecycleEmpty 
return

CapsLock:: F13

!CapsLock:: CapsLock