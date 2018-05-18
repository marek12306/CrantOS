@echo off
title CrantOS Starting...
echo Starting
goto first

:first
cls
title Please wait for updates
echo Wait for updates, please.
echo 10% of Pre-alpha is finished!
echo.
echo Press any key to continue and exit
pause>nul
exit

:menu
cls
title Welcome to CrantOS, please log in!
echo Accounts will be added in future realase!
echo.
echo 1 - Log in
echo 2 - Shut Down

SET INPUT=
SET /P INPUT=-

IF /I '%INPUT%'=='1' GOTO desktop
IF /I '%INPUT%'=='2' GOTO exit

:desktop
cls
title CrantOS C://

echo You are in: C://
echo.
echo 1 - Desktop
echo.
echo S - Shut Down

SET INPUT=
SET /P INPUT=-

IF /I '%INPUT%'=='s' GOTO exit
IF /I '%INPUT%'=='1' GOTO cdesktop

:exit
cls
echo Press any key to turn off system
pause>nul
exit

:cdesktop
cls
title CrantOS C://Desktop
echo You are in: C://Desktop
echo.
echo Empty folder

echo S - Shut Down
echo B - Back to C://

SET INPUT=
SET /P INPUT=-

IF /I '%INPUT%'=='s' GOTO exit
IF /I '%INPUT%'=='b' GOTO desktop
