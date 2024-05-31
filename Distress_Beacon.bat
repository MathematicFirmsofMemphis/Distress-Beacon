@echo off
setlocal

:: Target IP address or hostname for the ping command
set TARGET=8.8.8.8

:: Infinite loop to send distress pings repeatedly
:loop
    echo Sending distress ping to %TARGET%...
    
    :: Send a single distress ping request
    ping -n 1 %TARGET%
    
    :: Wait for 5 seconds before sending the next distress ping
    timeout /t 5 /nobreak

    goto loop

endlocal
