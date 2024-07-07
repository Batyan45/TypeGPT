@echo off

:: Activate the virtual environment
call myenv\Scripts\activate

:: Run the program in the background
start /B python TypeGPT.py

:: Inform the user
echo Program is running in the background.
