#RUN WITH ADMINISTRATOR"
Set-ExecutionPolicy "Unrestricted"

#Download OSSEC Windows Installer

Invoke-WebRequest -Uri "https://updates.atomicorp.com/channels/atomic/windows/ossec-agent-win32-3.7.0-24343.exe" -OutFile "C:\ossec-installer.exe"

#Run OSSEC Windows Installer
& "C:\ossec-installer.exe" -ArgumentList "/S /v/qn" -Wait
