# Video Trimmer Batch Script

This batch script trims the last 3 minutes from all `.mp4` videos in the folder where the script is located and saves the trimmed videos to a subdirectory called `output_dir`.

## Usage

### Method 1

1. Place the batch script in the folder containing the `.mp4` videos you want to process.
2. Run the script. It will create an `output_dir` subdirectory if it does not already exist.
3. The script will process each `.mp4` video, trimming the last 3 minutes, and save the trimmed videos to the `output_dir`.

**Make sure that the path to `ffmpeg` is added to the PATH environment variable.**

### Method 2

The easiest way is to get the [batch-lossless-cut.zip](https://github.com/m1nuzz/batch-lossless-cut/releases/download/batch-lossless-cut/batch-lossless-cut.zip) extract the files into the folder with the videos you want to trim, and run `batch-lossless-cut.bat`.
