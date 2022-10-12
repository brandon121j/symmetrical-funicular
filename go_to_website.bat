@echo off
:start
set /p user_input=Enter a website url:
echo is %user_input% the website you want?
set /p yn=Select yes or no [Y/N]
if %yn% == y (Start %user_input%) else (call :prompter)
exit
:prompter
goto start
