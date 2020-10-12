@echo off

set /p video=input video URL:
set /p audio=input audio URL:

:r
mpv --quiet --no-ytdl --user-agent="Mozilla/5.0 (Windows NT 10.0; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0" --referrer="https://www.bilibili.com/" "%video%" --audio-file="%audio%"

set /p choice=press q to quit:
if /i %choice% equ q goto :q
goto :r
:q