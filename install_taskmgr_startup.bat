


:: # // Daniel T. K. W. - github.com/danieltkw - danielkopolo95@gmail.com
:: ------------------------------------------------------------

@echo off
setlocal

:: Define startup folder path
set "startupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

:: Define script name
set "scriptName=start_taskmgr.bat"

:: Full path of the script in Startup
set "scriptPath=%startupFolder%\%scriptName%"

:: Check if script already exists
if exist "%scriptPath%" (
    echo Task Manager startup script is already installed.
    exit /b
)

:: Create the startup script
echo @echo off > "%scriptPath%"
echo start /min taskmgr.exe >> "%scriptPath%"

:: Confirm installation
echo Task Manager will now start minimized at every Windows logon.

:: ------------------------------------------------------------
