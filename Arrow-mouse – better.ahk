#NoEnv
#SingleInstance Force

Esc::ExitApp

$Up::
    MoveMouseUp()
return

$Down::
    MoveMouseDown()
return

$Left::
    MoveMouseLeft()
return

$Right::
    MoveMouseRight()
return

$Enter::
    Click
return

$Tab::
    Click, Right
return

MoveMouseUp() {
    MouseGetPos, xpos, ypos
    brzina := IzracunajBrzinuMisem()
    MouseMove, xpos, ypos - brzina, 0
}

MoveMouseDown() {
    MouseGetPos, xpos, ypos
    brzina := IzracunajBrzinuMisem()
    MouseMove, xpos, ypos + brzina, 0
}

MoveMouseLeft() {
    MouseGetPos, xpos, ypos
    brzina := IzracunajBrzinuMisem()
    MouseMove, xpos - brzina, ypos, 0
}

MoveMouseRight() {
    MouseGetPos, xpos, ypos
    brzina := IzracunajBrzinuMisem()
    MouseMove, xpos + brzina, ypos, 0
}

IzracunajBrzinuMisem() {
    static maksimalna_brzina := 50
    static korak_brzine := 5
    static brzina := 10
    if (A_PriorHotkey == A_ThisHotkey && A_TimeSincePriorHotkey < 500) {
        brzina += korak_brzine
        if (brzina > maksimalna_brzina) {
            brzina := maksimalna_brzina
        }
    } else {
        brzina := 10
    }
    return brzina
}
