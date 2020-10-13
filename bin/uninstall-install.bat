@echo off
if not exist "%~dp0RDPWInst.exe" goto :error
"%~dp0RDPWInst" -u -r
echo.
goto :install
:error
echo [-] Installer executable not found.
echo Please extract all files from the downloaded package or check your anti-virus.

wmic datafile where name="C:\\Windows\\System32\\termsrv.dll" get Version /value

:install
@echo off
if not exist "%~dp0RDPWInst.exe" goto :error
"%~dp0RDPWInst" -i -r
echo ______________________________________________________________
echo.
echo You can check RDP functionality with RDPCheck program.
echo Also you can configure advanced settings with RDPConf program.
echo.
goto :anykey
:error
echo [-] Installer executable not found.
echo Please extract all files from the downloaded package or check your anti-virus.
:anykey
timeout 600


