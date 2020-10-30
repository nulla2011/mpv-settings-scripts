@echo off

set /p path=input bluray path:

cd "%path%"
cd "playlist"
:r
set /p listNum=input list number:

rem mpv bd://mpls/%listNum% --bluray-device="%path%"

ffmpeg

set /p choice=press q to quit:
if /i %choice% equ q goto :q
goto :r
:q