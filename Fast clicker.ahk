toggle := 0
F1::
toggle := !toggle
if (toggle) {
    SetTimer, Clicker, 20
} else {
    SetTimer, Clicker, Off
}
return

Clicker:
Click
return

Esc::
ExitApp