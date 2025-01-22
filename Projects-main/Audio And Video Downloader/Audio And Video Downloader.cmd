@ECHO OFF
cls
cd /d %~dp0
md Downloads
title Audio And Video Downloader By Memer
mode 120,10
cd /d %AppData%
IF NOT EXIST AAVDownloader echo Press Any Key To Download Required Files [9 MB]... (This Happens Only On First Launch)&pause>nul&cls&echo Downloading...&md AAVDownloader&cd /d %AppData%\AAVDownloader&echo[&echo[&curl -L https://yt-dl.org/downloads/2021.12.17/youtube-dl --output youtube-dl.exe --progress-bar&curl https://cdn.discordapp.com/attachments/803527462465830976/811198886991495168/Menu.exe --output Menu.exe --silent&cls
:START
cd /d %AppData%\AAVDownloader
cls
echo Current Version:
youtube-dl --version
echo[
Menu 0AA0 "Audio (MP3)" "Video (MP4)" "Update"
IF %ErrorLevel%==1 goto MP3
IF %ErrorLevel%==2 goto MP4
IF %ErrorLevel%==3 cls&erase youtube-dl.exe >nul&echo Updating...&echo[&echo[&echo[&curl -L https://yt-dl.org/downloads/2021.12.17/youtube-dl --output youtube-dl.exe --progress-bar&cls
goto START
:MP4
cls
echo Paste URL
echo[
set /P LINK="> "
:MP4NAME
cls
echo Save As..?
echo[
set /P NAME="> "
IF EXIST "%~dp0Downloads\%NAME%.mp4" cls&echo A File With This Name Already Exists&pause&goto MP4NAME
cls
echo Downloading...
youtube-dl -q %LINK% --output "%~dp0Downloads\%NAME%.mp4" >error.txt
cd /d %~dp0Downloads
ren *.mkv *.mp4
cls
IF NOT EXIST "%NAME%.mp4" goto ERROR
set /P ANOTHER="Successfully Downloaded, Another?  [Y/N] > "
IF /I %ANOTHER% EQU y goto START
exit
:MP3
cls
echo Paste URL
echo[
set /P LINK="> "
:MP3NAME
cls
echo Save As..?
echo[
set /P NAME="> "
IF EXIST "%~dp0Downloads\%NAME%.mp3" cls&echo A File With This Name Already Exists&pause&goto MP3NAME
cls
echo Downloading...
youtube-dl -q -f bestaudio %LINK% --output "%~dp0Downloads\%NAME%.mp3" >error.txt
cd /d %~dp0Downloads
ren *.m4a *.mp3
ren *.webm *.mp3
cls
IF NOT EXIST "%NAME%.mp3" goto ERROR
set /P ANOTHER="Successfully Downloaded, Another?  [Y/N] > "
IF /I %ANOTHER% EQU y goto START
exit
:ERROR
echo Could Not Download&echo Next Time Use Only The Video Part Of The Link, Without All The Unnecessary Stuff After&echo Example: [example.com/video?stuff=notneeded+029]&echo If This Isnt The Problem Then That Site Isnt Supported
pause
