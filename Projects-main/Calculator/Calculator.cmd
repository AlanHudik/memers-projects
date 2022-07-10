@ECHO OFF
chcp 65001>nul
title Calculator By Memer
mode 60,20
:START
cls
echo    1 = Add
echo[
echo    2 = Subtract
echo[
echo    3 = Divide
echo[
echo    4 = Multiply
echo ——————————————————
echo[
set CHOICE=0
set A=0
set B=0
set C=0
set /P CHOICE="> "
IF %CHOICE%==1 goto PLU
IF %CHOICE%==2 goto MIN
IF %CHOICE%==3 goto DIV
IF %CHOICE%==4 goto MUL
echo Invalid Choice
pause
goto START
:PLU
echo[
echo First Number
set /P A="> "
echo[
echo Second Number
set /P B="> "
set /A C=A+B
echo ——————————————————————————————————————————————————
echo %A% Plus %B% Is %C%
pause
goto START
:MIN
echo[
echo First Number
set /P A="> "
echo[
echo Second Number
set /P B="> "
set /A C=A-B
echo ——————————————————————————————————————————————————
echo %A% Minus %B% Is %C%
pause
goto START
:DIV
echo[
echo First Number
set /P A="> "
echo[
echo Second Number
set /P B="> "
set /A C=A/B
echo ——————————————————————————————————————————————————
echo %A% Divided By %B% Is %C%
pause
goto START
:MUL
echo[
echo First Number
set /P A="> "
echo[
echo Second Number
set /P B="> "
set /A C=A*B
echo ——————————————————————————————————————————————————
echo %A% Times %B% Is %C%
pause
goto START