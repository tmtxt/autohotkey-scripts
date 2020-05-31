; --------------------
; Disable Left Alt button on Windows
LAlt up::
If (A_PriorKey = "LAlt") ;  If LAlt was pressed alone
    return ; do nothing
return

; Map CapsLock -> Ctrl (Emacs favorite style)
CapsLock::Ctrl

; ; In this case its necessary to define a custom combination by using "LAlt &" or "<!"
; ; to avoid that LAlt loses its original function as a modifier key:

; <!F4:: Send {Alt Down}{F4}{Alt Up} ; <! means LAlt

; <!Space::
; Send {Alt Down}{/}{Alt Up}
; return

; ^!Up:: Winset, Alwaysontop, Toggle, A

#IfWinActive, ahk_exe rider64.exe

!s::
Send !s
return

!c::
Send !c
return

#IfWinActive

; --------------------
; Ergonomic key mapping

; Not applicable for Emacs. Emacs has its own key binding mechanism
#IfWinNotActive, ahk_class Emacs

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

; Map some Alt- Key to Ctrl- Key
!c::
Send ^c
return

!v::
Send ^v
return

!a::
Send ^a
return

!s::
Send ^s
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

; Ctrl+K to delete line to end
^k::
Send +{End}
Send {Delete}
return

#IfWinNotActive

; --------------------
; Mac style:

; Quit app
#q::
Send !{F4}
return

#`::    ; Next window
WinGetClass, ActiveClass, A
WinSet, Bottom,, A
WinActivate, ahk_class %ActiveClass%
return

; --------------------
; Fast application switching
; F1: Browser
F1::
if WinExist("ahk_exe chrome.exe",,"Picture-in-Picture")
    WinActivate
return
; F2: Emacs
F2::
if WinExist("ahk_class Emacs")
    WinActivate
return
; F3
F3::
if WinExist("ahk_exe rider64.exe")
    WinActivate
return
; F4: Discord
F4::
if WinExist("ahk_exe Discord.exe")
    WinActivate
return
; F5
F5::
if WinExist("ahk_exe WindowsTerminal.exe")
    WinActivate
return
; F6
F6::
if WinExist("ahk_class iTunes")
    WinActivate
return
; F7: Secondary browser
F7::
if WinExist("ahk_exe firefox.exe")
    WinActivate
return
; F8: Messenger
F8::
if WinExist("ahk_exe Messenger.exe")
    WinActivate
return
; F9 RDP

; F10: Slack
F10::
if WinExist("ahk_exe Slack.exe")
    WinActivate
return
; F11
F11::
if WinExist("ahk_exe thunderbird.exe")
    WinActivate
return
; F12
F12::
if WinExist("ahk_exe Postman.exe")
    WinActivate
return

; --------------------
; Firefox keys
#IfWinActive, ahk_exe firefox.exe
#t::^t ; Win+T to Ctrl+T
#w::^w ; Win+W to Ctrl+W
#+t::^+t ; Win+Shift+T to Ctrl+Shift+T
; Win+Num to Ctrl+Num
#1::^1
#2::^2
#3::^3
#4::^4
#5::^5
#6::^6
#7::^7
#8::^8
#9::^9
^+p::
Send ^l
return

; Firefox on Windows defaults Ctrl+Shift+Q to quit but I don't want that. Simply redirect this key
; binding to another key binding and then set that key binding in the Firefox plugin
^+q::^+y
#IfWinActive

; --------------------
; Discord keys
#IfWinActive, ahk_exe Discord.exe
#k::
Send ^k
return
; Win+Num to Ctrl+Num
#1::
Send ^1
return
#2::
Send ^2
return
#3::
Send ^3
return
#4::
Send ^4
return
#5::
Send ^5
return
#IfWinActive

; --------------------
; Messenger keys
#IfWinActive, ahk_exe Messenger.exe
#k::
Send ^k
return
#IfWinActive

; --------------------
; Slack keys
#IfWinActive, ahk_exe slack.exe
#k::
Send ^k
return
#IfWinActive

; --------------------
; iTunes keys
#IfWinActive, ahk_class iTunes
#f::
Send ^f
return

^+i::
Send ^{up}
return

^+k::
Send ^{down}
return
#IfWinActive
