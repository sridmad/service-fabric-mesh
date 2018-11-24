@echo off
call ..\scripts\windows\build_and_publish.cmd todoservice.imageinfo.txt %*
if ERRORLEVEL 1 (
    set last_error=%ERRORLEVEL%
    echo Failed to process image for visualobjects-web
    exit /b %last_error%
)

call ..\scripts\windows\build_and_publish.cmd webfrontend.imageinfo.txt %*
if ERRORLEVEL 1 (
    set last_error=%ERRORLEVEL%
    echo Failed to process image for visualobjects-web
    exit /b %last_error%
)

exit /b 0
