# Video Trimmer Batch Script

This batch script trims a user-defined amount of time from the end of all `.mp4` videos in the folder where the script is located and saves the trimmed videos to a subdirectory called `output_dir`.

## Features
- Allows the user to input the trim time in the format `hh:mm:ss`, `mm:ss`, or `ss`.
- Automatically adds a minus sign to the user’s input to trim from the end of the video.
- If `ffmpeg.exe` is not found in the script’s directory, it will attempt to use `ffmpeg` from the system’s `PATH`.

## Usage

### Method 1

1. Place the batch script in the folder containing the `.mp4` videos you want to process.
2. Run the script. It will prompt you to enter the amount of time to trim from the end of each video in the format `hh:mm:ss`, `mm:ss`, or `ss`. 
   - Example: `07:07` is 7 minutes and 7 seconds, `07:07:07` is 7 hours, 7 minutes, and 7 seconds.
3. The script will create an `output_dir` subdirectory if it does not already exist.
4. It will process each `.mp4` video, trim the specified amount of time from the end, and save the trimmed videos to the `output_dir`.

**Note:** If `ffmpeg` is not located in the same directory as the script, make sure that the path to `ffmpeg` is added to the system `PATH` environment variable.

### Method 2

The easiest way is to download the [batch-lossless-cut.zip](https://github.com/m1nuzz/batch-lossless-cut/releases/download/batch-lossless-cut%2Bffmpeg/batch-lossless-cut.zip)
, extract the files into the folder with the videos you want to trim, and run `batch-lossless-cut.bat`.

## Requirements

- [FFmpeg](https://ffmpeg.org/) must be installed or included in the same directory as the script, or it should be available in the system `PATH`.

If you are using **Method 1**, you will need to download and install `ffmpeg` separately. You can either:

1. Add `ffmpeg` to the same directory as the batch script.
2. Or, add `ffmpeg` to your system’s `PATH` environment variable so it can be used globally.
