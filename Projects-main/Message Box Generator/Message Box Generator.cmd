@ECHO OFF
mode 70,5
color A
title Message Box Generator By Memer
:LOOP
cls
echo What Should The Message Box Say
set /P MESSAGE="> "
powershell [Reflection.Assembly]::LoadWithPartialName("""System.Windows.Forms""");[Windows.Forms.MessageBox]::show("""%MESSAGE%""", """""",0)>nul
goto LOOP