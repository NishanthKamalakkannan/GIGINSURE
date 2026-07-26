@echo off
echo ======================================================
echo          GigInsure System Diagnostics
echo ======================================================
echo.

set LOGFILE=diag_output.txt
echo GigInsure System Diagnostic Log > %LOGFILE%
echo Date/Time: %DATE% %TIME% >> %LOGFILE%
echo ------------------------------------------------------ >> %LOGFILE%

echo Checking Python...
python --version >> %LOGFILE% 2>&1
if %ERRORLEVEL% EQU 0 (
    echo [OK] Python is installed and in PATH.
) else (
    echo [FAIL] Python command failed. Trying 'py'...
    py --version >> %LOGFILE% 2>&1
)

echo. >> %LOGFILE%
echo Checking Node.js...
node -v >> %LOGFILE% 2>&1
if %ERRORLEVEL% EQU 0 (
    echo [OK] Node.js is installed and in PATH.
) else (
    echo [FAIL] Node.js is NOT found in PATH.
)

echo. >> %LOGFILE%
echo Checking NPM...
npm -v >> %LOGFILE% 2>&1
if %ERRORLEVEL% EQU 0 (
    echo [OK] NPM is installed.
) else (
    echo [FAIL] NPM is NOT found.
)

echo. >> %LOGFILE%
echo Checking Backend Requirements...
python -c "import fastapi, uvicorn, motor, pymongo; print('Backend modules OK')" >> %LOGFILE% 2>&1
if %ERRORLEVEL% EQU 0 (
    echo [OK] Backend Python packages are ready.
) else (
    echo [NOTICE] Backend packages need installation (pip install -r requirements.txt).
)

echo. >> %LOGFILE%
echo Checking MongoDB Connection (localhost:27017)...
powershell -Command "try { $client = New-Object System.Net.Sockets.TcpClient('127.0.0.1', 27017); Write-Output 'MongoDB Port 27017: OPEN'; $client.Close() } catch { Write-Output 'MongoDB Port 27017: CLOSED or NOT RUNNING' }" >> %LOGFILE% 2>&1

echo.
echo ======================================================
echo Diagnostic completed! Results saved to diag_output.txt
echo ======================================================
echo.
type %LOGFILE%
echo.
pause
