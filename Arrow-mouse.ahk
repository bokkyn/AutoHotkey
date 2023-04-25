#NoEnv
#SingleInstance Force

Esc::ExitApp

$Up::
    MouseGetPos, xpos, ypos
    MouseMove, xpos, ypos-10, 0
return

$Down::
    MouseGetPos, xpos, ypos
    MouseMove, xpos, ypos+10, 0
return

$Left::
    MouseGetPos, xpos, ypos
    MouseMove, xpos-10, ypos, 0
return

$Right::
    MouseGetPos, xpos, ypos
    MouseMove, xpos+10, ypos, 0
return

$Enter::
    Click
return

$Tab::
    Click, Right
return
