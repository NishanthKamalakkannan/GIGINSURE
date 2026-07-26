@echo off
echo ======================================================
echo   GigInsure Local Launcher
echo ======================================================
echo.

echo Launching Backend in a separate window...
start "GigInsure Backend" cmd /k "cd backend && echo [Backend] Installing dependencies... && python -m pip install -r requirements.txt && echo [Backend] Starting Uvicorn server on http://localhost:8000... && python -m uvicorn server:app --reload --port 8000"

echo Launching Frontend in a separate window...
start "GigInsure Frontend" cmd /k "cd frontend && echo [Frontend] Installing npm packages... && npm install --legacy-peer-deps && echo [Frontend] Starting React server on http://localhost:3000... && npm start"

echo.
echo Both terminal windows have been launched!
echo Please check the opened windows to see status or any error messages.
echo.
echo - Frontend Web App: http://localhost:3000
echo - Backend API Docs: http://localhost:8000/docs
echo.
pause
