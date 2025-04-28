@echo off
title Hossam Fadl Kaddour
cls
echo ================================================
echo   Text to Image Converter App
echo   Programmer: Hossam Fadl Kaddour
echo ================================================
echo.

:: Check for Python
where python >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo [ERROR] Python is not installed on your system
    echo Please install Python from: https://www.python.org/downloads/
    echo Make sure to check "Add Python to PATH" during installation
    pause
    exit /b
)

:: Creating the virtual environment if it does not exist
if not exist "venv" (
    echo [INFO] Creating virtual environment...
    python -m venv venv
    if %ERRORLEVEL% neq 0 (
        echo [ERROR] Failed to create virtual environment
        pause
        exit /b
    )
)

:: Activating the Virtual Environment
echo [INFO] Activating virtual environment...
call venv\Scripts\activate.bat

:: Requirements installation
if not exist "venv\Scripts\pip.exe" (
    echo [ERROR] Failed to activate virtual environment
    pause
    exit /b
)

echo [INFO] Installing requirements...
pip install -q transparent-background
pip install -q torch
pip install -q accelerate
pip install -q opencv-python
pip install -q spaces
pip install -q pillow  
pip install -q numpy
pip install -q timm
pip install -q kornia
pip install -q prettytable
pip install -q typing
pip install -q scikit-image
pip install -q huggingface_hub
pip install -q transformers>=4.39.1
pip install -q gradio
pip install -q gradio_imageslider
pip install -q loadimg>=0.1.1


:: Wait and launch browser
echo.
echo [INFO] Waiting for server startup...
timeout /t 5 /nobreak > nul
start http://localhost:7866

:: Running the Application
echo.
echo [INFO] Starting the application...
echo.
python app.py

:: Error handling
if %ERRORLEVEL% neq 0 (
    echo.
    echo [ERROR] An error occurred while running the application
    echo Please verify all required files are present
    pause
)

:: Deactivate virtual environment
deactivate