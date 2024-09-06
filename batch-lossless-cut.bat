@echo off
setlocal

:: Set the directory for trimmed videos
set "output_dir=output_dir"

:: Create the output directory if it doesn't exist
if not exist "%output_dir%" mkdir "%output_dir%"

:: Add the directory of the script to the PATH variable temporarily
set "script_dir=%~dp0"
set "PATH=%script_dir%;%PATH%"

:: Check if ffmpeg.exe exists in the current directory, else assume it's in the PATH
if exist "%script_dir%ffmpeg.exe" (
    set "ffmpeg_cmd=%script_dir%ffmpeg.exe"
) else (
    :: Check if ffmpeg is available in the PATH
    where ffmpeg >nul 2>nul
    if errorlevel 1 (
        echo ffmpeg not found in the current directory or in the system PATH. Please install or add ffmpeg to PATH.
        goto :end
    ) else (
        set "ffmpeg_cmd=ffmpeg"
    )
)

:: Ask the user how much time to trim from the end of each video
echo Enter the amount of time to trim from the end of each video (format: hh:mm:ss or mm:ss or ss):
echo Example: 07:07 is 7 minutes and 7 seconds, 07:07:07 is 7 hours, 7 minutes, and 7 seconds.
set /p trim_time="Trim time: "

:: Automatically add a minus sign if the user doesn't provide one
if not "%trim_time:~0,1%"=="-" (
    set "trim_time=-%trim_time%"
)

:: Loop through all MP4 files in the current directory
for %%f in (*.mp4) do (
    :: Trim the specified amount of time from each video and save it to the output directory
    "%ffmpeg_cmd%" -sseof "%trim_time%" -i "%%f" -c copy "%output_dir%/%%~nxf"
)

:end
endlocal
pause