@ECHO OFF
cd /d %~dp0
color A
mode 100,10
title File Encrypter And Decrypter By Memer
echo Choose An Option:
echo[
echo 1 = Encrypt A File
echo[
echo 2 = Decrypt A File
echo[
set /P CHOICE="> "
IF %CHOICE% EQU 1 goto ENCODE
IF %CHOICE% EQU 2 goto DECODE
cls
echo Invalid Choice
pause
exit
:ENCODE
cls
echo Drag The File Here And Press Enter
set /P FILE=
for %%i in (%FILE%) do set NAME=%%~ni
for %%i in (%FILE%) do set EXTENSION=%%~xi
copy %FILE% "%cd%\%NAME%%EXTENSION%"
cls
echo Encrypting...
powershell Compress-Archive -Path '%cd%\%NAME%%EXTENSION%' -DestinationPath '%cd%\%NAME%%EXTENSION%.zip' -force
cls
certutil -encode "%cd%\%NAME%%EXTENSION%.zip" "%cd%\%NAME%%EXTENSION%.enc" >nul
erase "%cd%\%NAME%%EXTENSION%.zip"
erase "%cd%\%NAME%%EXTENSION%"
cls
IF exist "%cd%\%NAME%%EXTENSION%.enc" echo Encrypted And Saved In Original File Directory&echo[&echo Do NOT Change The File Name&pause&exit
IF exist "%cd%\%NAME%%EXTENSION%.enc.enc" echo Encrypted And Saved In Original File Directory&echo[&echo Do NOT Change The File Name&pause&exit
IF exist "%cd%\%NAME%%EXTENSION%.enc.enc.enc" echo Encrypted And Saved In Original File Directory&echo[&echo Do NOT Change The File Name&pause&exit
IF exist "%cd%\%NAME%%EXTENSION%.enc.enc.enc.enc" echo Encrypted And Saved In Original File Directory&echo[&echo Do NOT Change The File Name&pause&exit
IF exist "%cd%\%NAME%%EXTENSION%.enc.enc.enc.enc.enc" echo Encrypted And Saved In Original File Directory&echo[&echo Do NOT Change The File Name&pause&exit
echo Could Not Encrypt :(
pause
exit
:DECODE
cls
echo Drag The File Here And Press Enter
set /P FILE=
cls
echo Decrypting...
for %%f in (%FILE%) do set OUT=%%~nf
certutil -decode %FILE% "%OUT%.zip" >nul
powershell Expand-Archive -Path '%OUT%.zip' -DestinationPath '%OUT%' -force
cls
erase "%OUT%.zip"
IF exist "%OUT%" echo Decrypted And Saved In [%OUT%] Folder&erase %FILE%&pause&exit
echo That File Isnt Encrypted
pause >nul