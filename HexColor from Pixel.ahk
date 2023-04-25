F9::
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%, RGB
MsgBox The color at the current cursor position is %color%.
return
Esc::
ExitApp
