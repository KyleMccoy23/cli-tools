@echo off

REM Get the current directory where the batch file is located
set current_dir=%~dp0

set exec_dir=%cd%

REM Set the name of the Python script to run
set script_name=main.py

cd %current_dir%
REM Check if the specified Python script exists in the current directory
if exist "%current_dir%%script_name%" (
    echo Running Python script: %script_name%
    python "%current_dir%%script_name%"
) else (
    echo The specified Python script was not found: %script_name%
)

REM Wait for user to press a key before exiting
cd %exec_dir%
pause
