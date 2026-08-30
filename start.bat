@echo off
echo =========================================
echo Starting Antigravity Email App Setup...
echo =========================================

REM Forcibly add Node.js to the path for this exact script execution
set PATH=C:\Program Files\nodejs;%PATH%

echo.
echo [1/2] Installing dependencies (this may take a minute)...
call npm install

echo.
echo [2/2] Starting the Next.js development server...
echo Please wait for the "Ready" message, then open your browser.
call npm run dev

pause
