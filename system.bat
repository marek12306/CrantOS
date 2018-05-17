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
SET /P INPUT=>

IF /I '%INPUT%'=='1' GOTO desktop
IF /I '%INPUT%'=='2' GOTO exit

:desktop
cls
title CrantOS C://

echo Nothing is here :/
echo You are in: C://
echo.
echo S - Shut Down (because nothing is here to do)

SET INPUT=
SET /P INPUT=>

IF /I '%INPUT%'=='S' GOTO exit

:exit
cls
Press any key to shutdown system
pause>nul
exit
