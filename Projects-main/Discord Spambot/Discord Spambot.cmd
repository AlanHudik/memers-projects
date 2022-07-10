@ECHO OFF
title Discord Spambot By Memer
echo Paste The Webhook:
set /P WEBHOOK=
cls
echo Enter A Message To Be Spammed
set /P MESSAGE="> "
cls
echo Getting Ready...
TIMEOUT 4 /NOBREAK >nul
cls
:SPAM
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"%MESSAGE%\"}" %WEBHOOK% >nul
echo [92m%MESSAGE%[0m
TIMEOUT 2 /NOBREAK >nul
goto SPAM