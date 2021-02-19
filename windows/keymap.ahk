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
