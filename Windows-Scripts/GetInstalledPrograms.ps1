<#
Creation Date : N/A
Last Updated : N/A
Last Tested : N/A
Author : N/A
Purpose : Gets all install programs on the device.
#>

$InstalledPrograms = Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | 
Select-Object DisplayName

$InstalledPrograms | ForEach-Object {
    Write-Output $_.DisplayName
}
