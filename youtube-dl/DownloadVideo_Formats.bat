@echo off
title Video Downloader Formats
echo ==== starting download of videos ====
SET $options=-F
SET $videos=
ECHO ======--OPTIONS--======
ECHO Options: 
ECHO %$options%
ECHO ======--VIDEOS--======
ECHO Videos:
ECHO %$videos%
ECHO ======----======
youtube-dl.exe %$options% %$videos%
echo ==== videos download complete ==== 
pause