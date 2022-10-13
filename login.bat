@if (@CodeSection == @Batch) @then
@echo off
set SendKeys=CScript //nologo //E:JScript "%~F0"
set pw=SomePassword
set ws=https://www.google.com
start https://somewebsite.com
TIMEOUT /t 3
%SendKeys% "%pw%"
%SendKeys% "{ENTER}"
TIMEOUT /t 3
%SendKeys% "^l"
%SendKeys% "%ws%"
%SendKeys% "{ENTER}"
GOTO :EOF

@end
// JScript section
var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));0
