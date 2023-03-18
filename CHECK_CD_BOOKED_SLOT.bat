@if (@CodeSection == @Batch) @then


@echo off

rem Use %SendKeys% to send keys to the keyboard buffer
set SendKeys=CScript //nologo //E:JScript "%~F0"
START CHROME "https://academia.srmist.edu.in/#Form:My_Lab_Bookings"
rem the script only works if the application in question is the active window. Set a timer to wait for it to load!
timeout /t 5
rem now you can have it send the actual username/password to input box
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{ENTER}"
timeout /t 5
%SendKeys% "{TAB}"
%SendKeys% "{ENTER}"
%SendKeys% "{DOWN}"
%SendKeys% "{ENTER}"
%SendKeys% "{TAB}"
%SendKeys% "{ENTER}"
goto :EOF

@end
// JScript section

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));