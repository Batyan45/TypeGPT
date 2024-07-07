@echo off

:: Find the process ID (PID) of the running TypeGPT.py script
for /f "tokens=2 delims=," %%i in ('tasklist /FI "IMAGENAME eq python.exe" /FO CSV /NH ^| findstr /I "TypeGPT.py"') do (
    set PID=%%i
)

:: Terminate the process
if defined PID (
    taskkill /PID %PID% /F
    echo Program has been terminated.
) else (
    echo Program is not running.
)
