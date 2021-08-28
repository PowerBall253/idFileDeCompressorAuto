@echo off
setlocal enableextensions
cd /d "%~dp0"

:StartLoop
if  "%~1"== "" goto EndLoop
findstr /B /C:"Version 7" "%~1" >nul 2>&1
if errorlevel 1 (
	idFileDeCompressor.exe -d "%~1" "%~1"
) else (
	idFileDeCompressor.exe -c "%~1" "%~1"
)
shift
goto StartLoop
:EndLoop
