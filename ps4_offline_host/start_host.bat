@echo off
setlocal
title PS4 Offline Jailbreak Host  (GoldHEN for FW 11.50)
cd /d "%~dp0"

echo ================================================================
echo   PS4 OFFLINE JAILBREAK HOST   (GoldHEN / FW 11.50)
echo ================================================================
echo.

where python >nul 2>&1
if errorlevel 1 goto nopython
echo [1/4] Python found:
python --version
echo.

echo [2/4] Firewall: opening TCP 8080 for LAN (needs admin rights) ...
net session >nul 2>&1 && netsh advfirewall firewall add rule name="PS4-Offline-Host-8080" dir=in action=allow protocol=TCP localport=8080 >nul 2>&1 && echo       done - rule present
echo.

echo [3/4] IPv4 address of this PC (look at the ACTIVE adapter):
ipconfig | findstr /i "IPv4"
echo.

echo [4/4] Starting web server on port 8080.  Press Ctrl+C to stop.
echo.
echo   NEXT - DO THIS ON THE PS4:
echo   1) Connect the PS4 to the SAME network as this PC, with NO
echo      internet access (example: router with the WAN cable pulled
echo      out). Do not sign in to PSN.
echo   2) Open the PS4 web browser and go to:
echo        http://IPv4-FROM-STEP-3-ABOVE:8080/
echo      example: http://192.168.1.50:8080/
echo   3) The page will detect "firmware 11.50, bug lapse" and start
echo      automatically. Wait 30-90 seconds for GoldHEN to load.
echo.
echo   Russian manual:  INSTRUKCIYA.txt  in this folder.
echo ================================================================
echo.
python -m http.server 8080 --bind 0.0.0.0
echo.
echo Server stopped.
pause
exit /b 0

:nopython
echo [ERROR] Python 3 is not found in PATH.
echo Install it from https://www.python.org/downloads/
echo During install tick "Add Python to PATH", then run this file again.
echo.
pause
exit /b 1
