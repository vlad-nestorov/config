function Get-MouseDeviceParameters {
    return @(gci -Recurse "HKLM:\SYSTEM\ControlSet001\Enum\HID" -Include "Device Parameters" -ErrorAction SilentlyContinue  |  ? { 
        $_.Property  -contains "FlipFlopWheel"
        }  
    );
}

function Enable-FlipFlopWheel {
    [CmdletBinding()]
    param (
        [Parameter(
            Mandatory         = $true,
            ValueFromPipeline = $true)]
        [Microsoft.Win32.RegistryKey]
        $registryKeys
    )

    Process {
        ForEach ($registryKey in $registryKeys) {
            Set-ItemProperty -Path $registryKey.PSPath -Name "FlipFlopWheel" -Value 1
        }
    }
}

#
# BEGIN SCRIPT
#

Get-MouseDeviceParameters | Enable-FlipFlopWheel 


Get-MouseDeviceParameters | Get-ItemProperty
