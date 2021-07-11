@ECHO off
SET "$datetime=%time% %date%"
ECHO the time and date is
ECHO %$datetime%
SET "$message=REPLACE ME YOU DOLT"
ECHO The message is
ECHO %$message%
SET "$autocommitmsg=%$message% %$datetime%"
ECHO The auto commit mesage is
ECHO %$autocommitmsg%
git commit -v --message="%$autocommitmsg%"
pause

