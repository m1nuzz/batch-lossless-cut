@echo off
setlocal

:: Set the directory for trimmed videos
set "output_dir=output_dir"

:: Create the output directory if it doesn't exist
if not exist "%output_dir%" mkdir "%output_dir%"

:: Loop through all MP4 files in the current directory
for %%f in (*.mp4) do (
    :: Trim the last 3 minutes of each video and save it to the output directory
    ffmpeg -sseof "-00:03:00.00" -i "%%f" -c copy "%output_dir%/%%~nxf"
)

endlocal
pause
