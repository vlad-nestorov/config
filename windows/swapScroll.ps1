function Get-MouseDeviceParameters {
    return @(gci -Recurse "HKLM:\SYSTEM\ControlSet001\Enum\HID" -Include "Device Parameters" -ErrorAction SilentlyContinue  |  ? { 
        $_.Property  -contains "FlipFlopWheel"
        }  
    );
}

function Enable-FlipFlopWheel {
    [CmdletBinding()]
    param (
        [Parameter()]
        [Microsoft.Win32.RegistryKey]
        $registryKey
    )
   Set-ItemProperty -Path $registryKey.PSPath -Name "FlipFlopWheel" -Value 1
}

Get-MouseDeviceParameters | ForEach-Object {
    Enable-FlipFlopWheel -registryKey $_
}

Get-MouseDeviceParameters | Get-ItemProperty
