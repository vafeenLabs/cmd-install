@echo off
set keyName=HKCU\Software\Classes\Directory\Background\shell\CommandPrompt
set keyValue=Command line here
set keyCommand=cmd.exe /s /k pushd "%V"

reg add "%keyName%" /ve /d "%keyValue%" /f
reg add "%keyName%" /v "Icon" /d "cmd.exe" /f
reg add "%keyName%\command" /ve /d "%keyCommand%" /f
