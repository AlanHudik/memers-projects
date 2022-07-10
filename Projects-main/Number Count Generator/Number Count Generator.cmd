@ECHO OFF
cd /d %~dp0
mode 90,5
color A
title Number Count Generator By Memer
echo Starting Number Value
set /P START="> "
cls
echo Ending Number Value
set /P GOAL="> "
cls
IF EXIST counted.txt erase counted.txt
echo Generating Numbers... This Could Take Some Time, Please Wait...
for /L %%n in (%START%,1,%GOAL%) do echo %%n>>counted.txt
cls
echo Finished Generating Numbers From [%START%] To [%GOAL%] And Saved As [counted.txt]
echo Press Any Key To Exit...
pause >nul