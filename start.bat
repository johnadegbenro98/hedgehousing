@echo off
REM One-click starter for HedgeHousing (Windows)
REM This script will install dependencies (if missing) and start backend and frontend in separate windows.
SETLOCAL
SET ROOT=%~dp0
echo Starting HedgeHousing one-click starter...
echo Make sure Node.js (>=16) and Git are installed. If you don't have MongoDB locally, use a cloud Mongo URI (MongoDB Atlas).
timeout /t 2 > nul

REM Start backend: opens new window, installs deps, and starts dev server
start cmd /k "cd /d \"%ROOT%backend\" && echo Installing backend dependencies... && npm install && echo Starting backend... && npm run dev"

REM Start frontend: opens new window, installs deps, and starts dev server
start cmd /k "cd /d \"%ROOT%frontend\" && echo Installing frontend dependencies... && npm install && echo Starting frontend... && npm run dev"

echo Two windows opened to run backend and frontend. If any window shows errors, copy the error and send it to me and I'll help fix.
pause
