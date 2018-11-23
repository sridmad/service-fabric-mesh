@echo off
call ..\scripts\windows\build_and_publish.cmd visualobjects-web.imageinfo.txt %*
if ERRORLEVEL 1 (
    set last_error=%ERRORLEVEL%
    echo Failed to process image for visualobjects-web
    exit /b %last_error%
)

call ..\scripts\windows\build_and_publish.cmd visualobjects-worker.imageinfo.txt %*
if ERRORLEVEL 1 (
    set last_error=%ERRORLEVEL%
    echo Failed to process image for visualobjects-worker
    exit /b %last_error%
)

call ..\scripts\windows\build_and_publish.cmd visualobjects-worker-rotate.imageinfo.txt %*
if ERRORLEVEL 1 (
    set last_error=%ERRORLEVEL%
    echo Failed to process image for visualobjects-worker-rotate
    exit /b %last_error%
)
exit /b 0