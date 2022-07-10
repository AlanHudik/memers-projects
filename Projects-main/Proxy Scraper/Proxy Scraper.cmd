@ECHO OFF
cd /d %~dp0
mode 40,15
chcp 65001>nul
title Proxy Scraper By Memer
echo Choose A Proxy Type:
echo[
echo      HTTP
echo[
echo      HTTPS
echo[
echo      SOCKS4
echo[
echo      SOCKS5
echo ———————————————
set /P OPTION="> "
echo Scraping...
IF /I %OPTION%==HTTP curl -L t.ly/CjN9 --output %OPTION%.txt --silent
IF /I %OPTION%==HTTPS curl -L t.ly/rtQa --output %OPTION%.txt --silent
IF /I %OPTION%==SOCKS4 curl -L t.ly/YOvh --output %OPTION%.txt --silent
IF /I %OPTION%==SOCKS5 curl -L t.ly/nSEZ --output %OPTION%.txt --silent
curl proxy-list.download/api/v1/get?type=%OPTION%>>%OPTION%.txt --silent
cls
echo Done Scraping, And Saved As [%OPTION%.txt]
pause