@echo off
setlocal
cd /d "%~dp0"

echo ==========================================
echo       SMART WATER SAVER - STARTING
 echo ==========================================
echo.

where py >nul 2>nul
if %errorlevel%==0 (
    set "PYTHON=py"
) else (
    where python >nul 2>nul
    if %errorlevel%==0 (
        set "PYTHON=python"
    ) else (
        echo Python was not found on this PC.
        echo Please install Python from https://www.python.org/downloads/
        echo Make sure "Add Python to PATH" is selected during installation.
        pause
        exit /b 1
    )
)

if not exist ".venv\Scripts\python.exe" (
    echo Creating a Python virtual environment...
    %PYTHON% -m venv .venv
    if errorlevel 1 (
        echo Failed to create the virtual environment.
        pause
        exit /b 1
    )
)

echo Installing required packages...
.venv\Scripts\python.exe -m pip install --upgrade pip --disable-pip-version-check
.venv\Scripts\python.exe -m pip install -r requirements.txt --disable-pip-version-check
if errorlevel 1 (
    echo Failed to install the required packages.
    pause
    exit /b 1
)

echo.
echo Starting Smart Water Saver...
echo Your browser will open automatically.
echo Keep this window open while using the website.
echo.
start "" "http://127.0.0.1:5000"
timeout /t 3 /nobreak >nul
.venv\Scripts\python.exe app.py

pause
