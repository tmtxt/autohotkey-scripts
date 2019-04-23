LAlt up::
If (A_PriorKey = "LAlt") ;  If LAlt was pressed alone
    return ; do nothing
return

CapsLock::Ctrl

; ; In this case its necessary to define a custom combination by using "LAlt &" or "<!" 
; ; to avoid that LAlt loses its original function as a modifier key:

; <!F4:: Send {Alt Down}{F4}{Alt Up} ; <! means LAlt

<!Space::
Send {Alt Down}{/}{Alt Up}
return

; Alt+I/K/J/L to Up/Down/Left/Right
<!i::
Send {up}
return

<!k::
Send {down}
return

<!j::
Send {left}
return

<!l::
Send {right}
return

; Alt+Shift+I/K/J/L to PageUp/PageDown/Home/End
<!+i::
Send {PgUp}
return

<!+k::
Send {PgDn}
return

<!+j::
Send {Home}
return

<!+l::
Send {End}
return

; Alt+N/Alt+Shift+N to Shift+Home/Shift+End
!n::
Send ^{Home}
return

!+n::
Send ^{End}
return

; Ctrl+M/Alt+M to Enter
^m::
Send {Enter}
return

!m::
Send {Enter}
return

; Alt+X/C/V to Ctrl+X/C/V
; !x::
; Send ^x
; return

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

; Alt+D to Delete, Alt+Shift+D to Ctrl+Delete (forward delete 1 word)
!d::
Send {Delete}
return

!+d::
Send ^{Delete}
return

; Alt+U/O to Ctrl+Left/Right (Previous/Next word)
!u::
Send ^{left}
return

!o::
Send ^{right}
return

; Ctr+/ and Alt+Z to Ctrl+Z (Undo)
^/::
Send ^z
return

!z::
Send ^z
return
