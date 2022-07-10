@ECHO OFF
chcp 65001>nul
title Loading Bar By Memer
color A
mode 100,5
:START
set TAGS=%TAGS%█████
set /A LOAD=%LOAD%+5
echo[
echo %TAGS%
echo Loading... %LOAD%%%
TIMEOUT 1 /NOBREAK >nul
cls
IF %LOAD% NEQ 100 goto START
echo[
echo Loading Finished
pause