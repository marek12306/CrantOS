@echo off
title CrantOS Starting...
echo Starting
goto first

:first
cls
title Please wait for updates
echo Wait for updates, please.
echo 40% of Pre-alpha is finished!
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
echo 3 - Programs
echo.
echo S - Shut Down

SET INPUT=
SET /P INPUT=-

IF /I '%INPUT%'=='s' GOTO exit
IF /I '%INPUT%'=='1' GOTO cdesktop
IF /I '%INPUT%'=='2' GOTO csystem
IF /I '%INPUT%'=='3' GOTO cprograms

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
title CrantOS Settings
cls
echo Settings
echo.
echo ==== Themes ====
echo 1 - Default
echo 2 - White
echo 3 - Sky
echo ================
echo B - Close app

SET INPUT=
SET /P INPUT=-

IF /I '%INPUT%'=='1' color 07 && goto settings
IF /I '%INPUT%'=='2' color F0 && goto settings
IF /I '%INPUT%'=='3' color B0 && goto settings
IF /I '%INPUT%'=='b' goto csystem

:cprograms
cls
title CrantOS C://Programs
echo You are in: C://Programs
echo.
echo 1 - Settings
echo.
echo S - Shut Down
echo B - Back to C://

SET INPUT=
SET /P INPUT=-

IF /I '%INPUT%'=='s' GOTO exit
IF /I '%INPUT%'=='b' GOTO desktop
IF /I '%INPUT%'=='1' GOTO psettings

:psettings
title CrantOS Settings
cls
echo Settings
echo.
echo ==== Themes ====
echo 1 - Default
echo 2 - White
echo 3 - Sky
echo ================
echo B - Close app

SET INPUT=
SET /P INPUT=-

IF /I '%INPUT%'=='1' color 07 && goto psettings
IF /I '%INPUT%'=='2' color F0 && goto psettings
IF /I '%INPUT%'=='3' color B0 && goto psettings
IF /I '%INPUT%'=='b' goto cprograms
