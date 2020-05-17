@echo off
color a
if not exist %ComputerName%~ mac$ md %ComputerName%~ mac$
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> read.vbs
call mac.bat "text"
echo speech.speak "%text%" >> read.vbs
start read.vbs
pause
Del read.vbs
exit