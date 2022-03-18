$devParams = @(gci -Recurse "HKLM:\SYSTEM\ControlSet001\Enum\HID" -Include "Device Parameters" -ErrorAction SilentlyContinue)

# TODO: Filter on property FlipFlopWheel to avoid polluting registry (too late for this time around :')

$devParams | % {
    Set-ItemProperty -Path $_.PSPath -Name "FlipFlopWheel" -Value 1
}

$devParams = @(gci -Recurse "HKLM:\SYSTEM\ControlSet001\Enum\HID" -Include "Device Parameters" -ErrorAction SilentlyContinue)

$devParams | Get-ItemProperty
