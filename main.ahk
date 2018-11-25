; Alt+I/K/J/L to Up/Down/Left/Right
!i::
Send {up}
return

!k::
Send {down}
return

!j::
Send {left}
return

!l::
Send {right}
return

; Ctrl+M/Alt+M to Enter
^m::
Send {Enter}
return

!m::
Send {Enter}
return

; Alt+X/C/V to Ctrl+X/C/V
!x::
Send ^x
return

!c::
Send ^c
return

!v::
Send ^v
return

; Alt+F to Backspace, Alt+Shift+F to Ctrl+Backspace (delete 1 word)
!f::
Send {Backspace}
return

!+f::
Send ^{Backspace}
return
