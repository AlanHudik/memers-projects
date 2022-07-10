@ECHO OFF
mode 150,30
title PY To EXE Converter By Memer
cd /d %~dp0
echo Loading... (This Can Take A Minute On First Launch)
pip install pyinstaller >nul
cls
IF %ErrorLevel% NEQ 0 color 4&echo You Need To Have Python 3.4+ Installed (Not Windows Store Version) And Added To PATH&pause&exit
color A
echo Enter Full Name Of File You Want To Convert To EXE (It Must Be In The Current Directory)
echo Warning: The Program Will Give False Positive Virus Detections Because This Converter Is Mostly Used To Create Malware
set /P FILE="> "
cls
echo Make Program Run Invisible? (Even More AV Detections) [Y/N]
set CHOSEN=
set /P CHOICE=
IF /I %CHOICE%==y set CHOSEN=--windowed
mode 130,20
pyinstaller -F  --onefile %CHOSEN% "%FILE%"
IF %ErrorLevel% NEQ 0 color 4&echo You Need To Have Python 3.4+ Installed (Not Windows Store Version) And Added To PATH&pause&exit
explorer dist
for %%f in ("%FILE%") do set OUT=%%~dpnf
RD /S /Q build 2>nul
RD /S /Q __pycache__ 2>nul
erase "%OUT%.spec" 2>nul