@echo off

REM Check if Python is installed
python --version >nul 2>&1
if %errorlevel% equ 0 (
    echo Python is already installed.
) else (
    echo Python is not installed. Downloading and installing Python...
    REM Set the Python installer URL (modify this to the latest version as needed)
    set installer_url=https://www.python.org/ftp/python/3.11.0/python-3.11.0-amd64.exe
    set installer_file=%temp%\python_installer.exe

    REM Download the installer
    powershell -Command "Invoke-WebRequest -Uri %installer_url% -OutFile %installer_file%"

    REM Install Python silently
    %installer_file% /quiet InstallAllUsers=1 PrependPath=1

    REM Clean up
    del %installer_file%

    echo Python installation completed.
)

REM Prompt user for the folder to add to the user PATH
echo Please enter the full path of the folder to add to the user PATH:
set /p file_path=

REM Add the user-specified folder to the user PATH
setx PATH "%file_path%;%PATH%"

REM Display success message
echo Added %file_path% to the user PATH.
echo Script completed.
pause
