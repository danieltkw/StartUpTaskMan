@echo off
:: Start Task Manager Minimized
start /min taskmgr

:: Add script to startup via registry
set "regPath=HKCU\Software\Microsoft\Windows\CurrentVersion\Run"
set "valueName=TaskManagerStarter"
set "batPath=%~f0"

:: Use reg add to create or update the registry key
reg add "%regPath%" /v "%valueName%" /t REG_SZ /d "\"%batPath%\"" /f

:: Exit the script
exit
