@echo off
call ..\scripts\windows\build_and_publish.cmd counter.imageinfo.txt %*
exit /b %ERRORLEVEL%
