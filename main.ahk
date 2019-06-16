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
<#q::
Send !{F4}
return

; --------------------
; Fast application switching
; F1: Browser
F1::
if WinExist("ahk_exe firefox.exe")
    WinActivate
else
    Run firefox.exe
return
; F2: Emacs
F2::
if WinExist("ahk_class Emacs")
    WinActivate
else
    Run runemacs.exe
return
; F3
F3::
if WinExist("ahk_exe rider64.exe")
    WinActivate
else
    Run, "C:\Program Files\JetBrains\JetBrains Rider 2019.1.2\bin\rider64.exe"
return
; F4: Discord
F4::
if WinExist("ahk_exe Discord.exe")
    WinActivate
else
    Run, "C:\Users\me\AppData\Local\Discord\Update.exe" "--processStart" "Discord.exe"
return
; F5
; F6
F6::
if WinExist("ahk_class iTunes")
    WinActivate
else
    Run, iTunes.exe
return
; F7: Secondary browser
; F8: Messenger
F8::
if WinExist("Messenger")
  WinActivate
else
  ; NOTE: Change this depending on the machine
  Run, "C:\Program Files (x86)\Google\Chrome\Application\chrome_proxy.exe" "--profile-directory=Default" "--app-id=necdkaglbmnhgapjfamakhengnbknpdn"
return
; F9
; F10: Slack
F10::
if WinExist("ahk_exe slack.exe")
    WinActivate
else
    Run, "C:\Users\me\AppData\Local\slack\slack.exe"
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
#IfWinActive
