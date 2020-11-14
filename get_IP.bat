@echo off
FOR /F "tokens=2,3" %%A IN ('ping %computername% -n 1 -4') DO IF "from"== "%%A" set "IP=%%~B"
SET LocalIPAddress=%IP:~0,-1%
ECHO local ip is: %LocalIPAddress%
PAUSE
exit