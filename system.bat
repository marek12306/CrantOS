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
echo 2 - System
echo.
echo S - Shut Down

SET INPUT=
SET /P INPUT=-

IF /I '%INPUT%'=='s' GOTO exit
IF /I '%INPUT%'=='1' GOTO cdesktop
IF /I '%INPUT%'=='2' GOTO csystem

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

:csystem
cls
title CrantOS C://System
echo You are in: C://System
echo.
echo This directory is hidden for security purposes
echo.
echo B - Back to C://
echo ======= or =======
echo E - Go to settings
echo S - Shut Down

SET INPUT=
SET /P INPUT=-

IF /I '%INPUT%'=='s' GOTO exit
IF /I '%INPUT%'=='b' GOTO desktop
IF /I '%INPUT%'=='e' GOTO settings

:settings
echo.
echo Not avaible yet
goto csystem

:cprograms
cls
title CrantOS C://Programs
echo You are in: C://Programs
echo.
echo 1 - Settings
echo.
echo S - Shut Down
echo B - Back to C://

IF /I '%INPUT%'=='s' GOTO exit
IF /I '%INPUT%'=='b' GOTO desktop
IF /I '%INPUT%'=='e' GOTO settings
