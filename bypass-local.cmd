@echo off
REM Use this script when you have the unattend.xml file locally on your USB drive
REM Place this script and unattend.xml in the same directory on your Ventoy USB

set SCRIPT_DIR=%~dp0
if not exist "%SCRIPT_DIR%unattend.xml" (
	echo ERROR: unattend.xml not found in %SCRIPT_DIR%
	pause
	exit /b 1
)
copy /Y "%SCRIPT_DIR%unattend.xml" C:\Windows\Panther\unattend.xml
%WINDIR%\System32\Sysprep\Sysprep.exe /oobe /unattend:C:\Windows\Panther\unattend.xml /reboot
