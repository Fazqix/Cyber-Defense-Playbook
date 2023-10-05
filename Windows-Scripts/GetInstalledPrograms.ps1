<#
Creation Date : 1/21/23
Last Updated : 1/21/23
Last Tested : 1/21/23
Author : Josiah Young
Purpose : Gets all install programs on the device.
#>

$InstalledPrograms = Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | 
Select-Object DisplayName

$InstalledPrograms | ForEach-Object {
    Write-Output $_.DisplayName
}
