; Reverse scrolling, except on VDESK because Razer handles that for us
#MaxHotkeysPerInterval 250
#If (%A_ComputerName% != VDESK)
    WheelUp::WheelDown
    WheelDown::WheelUp

#If

; Pretend RControl is a separate control key, by using 2 keystrokes in Intellij, first_keystroke=Control F9
RControl::
    Send {Control down}{F9}
    Keywait RControl
    Send {Control up}
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
