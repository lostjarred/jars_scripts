@echo off
title Video Downloader
ECHO +================================+
ECHO +   Video Downloader             +
ECHO +                                +
ECHO +================================+
ECHO ==== starting download of videos ====
SET $options=--add-metadata --all-subs --embed-subs
REM The format for video to download, can be found by youtube-dl -F 
REM this one is 640x480 mp4 video
SET $format=-f 18
SET $videos=
REM location of ffmpeg.exe
SET "$ffmpegloc=<PATH TO FFMPEG>\ffmpeg\bin"
ECHO ======-----====== 
ECHO Options:
ECHO %$options%
ECHO Format: 
ECHO %$format%
ECHO ======--VIDEOS--======
ECHO Videos to download
ECHO %$videos%
ECHO ======----======
youtube-dl.exe --ffmpeg-location %$ffmpegloc% %$options% %$format% %$videos%
echo ==== videos download complete ==== 
pause