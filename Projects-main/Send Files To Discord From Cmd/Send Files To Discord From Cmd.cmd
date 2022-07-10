@ECHO OFF
cd /d %~dp0
title Send Files To Discord From Cmd By Memer
echo Paste A Webhook To Use
set /P WEBHOOK=
cls
echo Now Enter A File To Send (Has To Be In The Same Directory)
set /P FILE=
cls
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"***Sending A File...***\"}" %WEBHOOK% >nul
echo Sending The File...
curl -F file=@%FILE% %WEBHOOK% >nul