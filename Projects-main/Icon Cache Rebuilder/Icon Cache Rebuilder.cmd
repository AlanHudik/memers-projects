@ECHO OFF
title Icon Cache Rebuilder By Memer
set CHOICE=0
echo This PC Needs To Restart In Order To Rebuild The Icon Cache
echo Press Enter When Your Ready
pause >nul
TASKKILL /IM explorer.exe /F >nul
echo Rebuilding The Icon Cache...
TIMEOUT 3 /NOBREAK >nul
erase /F /Q "%LocalAppData%\IconCache.db"
RD /S /Q "%LocalAppData%\Microsoft\Windows\Explorer"
SHUTDOWN /R /T 0