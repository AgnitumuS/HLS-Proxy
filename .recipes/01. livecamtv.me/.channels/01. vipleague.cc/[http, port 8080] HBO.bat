@echo off

set streamID=hbosd
set port=8080
set tls=0
set prefetch=0

rem :: HLS url obtained using "WebCast-Reloaded" on webpage:
rem ::   https://www.vipleague.cc/hbo-streaming-link-1

set video_URL=https://e1.livecamtv.me/zmelive/6rIAHeghLaYNOscpJQW8/playlist.m3u8
set play_in_VLC=0

set PATH=%~dp0..\..;%PATH%

call "%~dp0..\..\..\.lib\print_proxied_url.bat" "%video_URL%" "%port%" "%tls%"

if "%play_in_VLC%"=="1" call "%~dp0..\..\..\.bin\play_in_VLC.cmd" "%proxied_URL%"

seelive "%streamID%" "%port%" "%tls%" "%prefetch%"