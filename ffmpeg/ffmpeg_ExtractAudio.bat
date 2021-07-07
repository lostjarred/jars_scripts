@ECHO off
TITLE ffmpeg Audio Extractor
ECHO +===========================+
ECHO + ffmpeg Audio Extractor    +
ECHO +===========================+
ECHO ==--ffmpeg Options--==
REM options for ffmpeg to extract audio
REM ffmpeg example ffmpeg -i "something.mkv" -q:a 0 -map a sample.mp3
SET "$infile=%1"
SET "$outfile=%2.mp3"
SET "$ffmpegloc=<pathtoffmpegfolder>"
SET "$ffmpgecp1=ffmpeg.exe -i"
SET "$ffmpgecp2=-q:a 0 -map a"
SET "$ffmpegc=%$ffmpgecp1% %$infile% %$ffmpgecp2% %$outfile%"
ECHO ==----==
ECHO ==FILES==
ECHO Incoming file is:
ECHO %$infile%
ECHO Output file is:
ECHO %$outfile%
ECHO ==FFMPEG==
ECHO ffmpeg is located at:
ECHO %$ffmpegloc%
ECHO ffmpeg command part 1 is:
ECHO %$ffmpgecp1%
ECHO ffmpeg command part 2 is:
ECHO %$ffmpgecp2%
ECHO ffmpeg final command is:
ECHO %$ffmpegc%
ECHO --EXTRACTING AUDIO--
%$ffmpegloc%\bin\%$ffmpegc%