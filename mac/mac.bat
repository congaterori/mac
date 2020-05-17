@echo off 
color 70
title mac osx
::PROMPT $M$_$P$G
if not exist mac\%ComputerName%:~ mac$ md %ComputerName%:~ mac$
::if not exit read.vbs echo '>"read.vbs"
::echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "read.vbs"
::echo speech.speak ""
cls
cd %USERNAME%@%ComputerName%~$
doskey cortana=start ms-cortana:
doskey clear=cls
doskey RANDOM=echo %RANDOM%
doskey pwd=echo %cd%
doskey ls=dir $1 /b /a
doskey apt_update="C:\Windows\System32\wuauclt.exe /updatenow"
doskey show_apt_update=cmd /ver
doskey whoami=echo %USERNAME%
doskey USER=echo %USERNAME%
doskey date=echo %DATE% %TIME%
doskey computer=echo %USERNAME%@%ComputerName%:~$
doskey rm=Del $1
doskey xdg-open=start $1
doskey wget=powershell -Command "Invoke-WebRequest $1 -OutFile $2"
doskey kill=taskkill /PID $1
doskey killall=taskkill $1.exe
doskey pkill=taskkill $1
doskey grep=FIND $1 $2
doskey locate=if exist $1 echo file exist | echo file not exist
cls
doskey mv=REN $1 $2
doskey df=wmic logicaldisk get size,freespace,caption
doskey alias=doskey $1=$2
doskey wc=FINDSTR /R /N "^.*" $1 | FIND /C ":"
cls
doskey cp=COPY $1 $2
doskey connect=explorer.exe "$1"
doskey search=start https://www.google.com/search?q=$1
doskey searchlucky=explorer.exe "https://www.google.com/search?q=$1&btnI"
doskey control=@echo off
doskey edit=FIND "" /v /c
doskey exitnote=@echo on
doskey say=set text=$* $T start read.bat
doskey runsay=start read.lnk
cls
doskey /History
if exist debug.log Del debug.log
cls
title macos -- bash -- 2020 (C)
PROMPT %ComputerName%:~ mac$$ 