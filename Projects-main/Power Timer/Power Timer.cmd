@ECHO OFF
mode 70,10
title Power Timer By Memer
color A
set ACTION=0
echo What Should Happen After The Countdown?
echo 1 = Sign Out
echo 2 = Restart
echo 3 = Sleep
echo 4 = Shutdown
set /P ACTION="> "
cls
IF %ACTION%==1 echo Sign Out Selected&set WHAT=Sign Out&goto START
IF %ACTION%==2 echo Restart Selected&set WHAT=Restart&goto START
IF %ACTION%==3 echo Sleep Selected&set WHAT=Sleep&goto START
IF %ACTION%==4 echo Shutdown Selected&set WHAT=Shutdown&goto START
echo Invalid Choice
pause
exit
:START
echo Enter Time In Seconds To Countdown From
set /P TIME="> "
:LOOP
cls
set /A TIME=%TIME%-1
IF %TIME%==0 goto TIMEUP
echo[
echo [%TIME%] Seconds Remaining Until %WHAT%, Close To Abort
TIMEOUT 1 /NOBREAK >nul
goto LOOP
:TIMEUP
IF %ACTION%==1 SHUTDOWN /L
IF %ACTION%==2 SHUTDOWN /R
IF %ACTION%==3 SHUTDOWN /H
IF %ACTION%==4 SHUTDOWN /S