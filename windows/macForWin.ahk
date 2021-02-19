; Reverse scrolling
WheelUp::
    Send, {WheelDown Down}
    Keywait, WheelUp
    Send, {WheelDown Up}
return

WheelDown::
    Send, {WheelUp Down}
    Keywait, WheelDown
    Send, {WheelUp Up}
return

; Remap Ctrl-Q to Alt-F4
^q::WinClose, A


; https://www.autohotkey.com/boards/viewtopic.php?t=70379
; Remap Ctrl-Tab to Alt-Tab
^Tab::
    Send {Alt down}{Tab}
    Keywait Control
    Send {Alt up}
return

; https://www.autohotkey.com/boards/viewtopic.php?t=70379
; Remap Ctrl-Shift-Tab to Alt-Shift-Tab
^+Tab::
    Send {Alt down}{Shift down}{Tab}
    Keywait Control
    Send {Alt up}
    Send {Shift up}
return
