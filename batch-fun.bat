@echo off
set hw=Hello World!
set gb=Goodbye!
set /p choice=/Do you want to go to my website? [Y/N]
if %choice%== y (start "chrome.exe" https://www.brandon121j.com && exit) else (echo %gb% )
timeout /t 5
