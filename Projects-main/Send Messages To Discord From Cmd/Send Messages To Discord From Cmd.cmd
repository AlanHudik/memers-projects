@ECHO OFF
title Send Messages To Discord From Cmd By Memer
echo Paste The Webhook
set /P WEBHOOK=
cls
echo Type A Message To Send
:AGAIN
set MESSAGE=
set /P MESSAGE="> "
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"%MESSAGE%\"}" %WEBHOOK% >nul
echo[
goto AGAIN