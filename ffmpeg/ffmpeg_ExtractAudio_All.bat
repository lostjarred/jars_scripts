@ECHO off
TITLE Audio Extractor
ECHO ---Extracting audio from MKV files---
FORFILES /m *.mkv /c "cmd /c ffmpeg_ExtractAudio @file @fname"
ECHO ---Extracting audio from MP4 files---
FORFILES /m *.mp4 /c "cmd /c ffmpeg_ExtractAudio @file @fname"
ECHO ---Extracting audio from WEBM files---
FORFILES /m *.webm /c "cmd /c ffmpeg_ExtractAudio @file @fname"
pause