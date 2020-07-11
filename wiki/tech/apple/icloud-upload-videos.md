---
layout: default
category: Apple
slug: uploading-videos-to-icloud-on-windows
title: "Uploading videos to iCloud on Windows"
---

Required Software:
- <https://support.apple.com/en-ca/HT204283> - iCloud
- <https://ffmpeg.zeranoe.com/builds/> - ffmpeg
- <https://handbrake.fr/> - handbrake
- <https://www.petges.lu/download/> - Attribute Changer

Preperation:
- Install attribute changer, test on a file, change only modified date, set other dates as "Modified value from file tab"
- Install iCloud and run, minimum required settings: Photos > Upload new ... from my PC
- Unzip ffmpeg, add ffmpeg folder to windows path
- Install handbrake, select **Apple 1080p30** profile as default, set default output folder (Desktop), Rename fileformat in preferences (to `{source}-`)
- Create a bat file `zzz.bat` with contents: `for %%A IN (*.m4v) DO ffmpeg -i "%%A" -c copy "%%A.m4v"`

Steps:

1. Copy files (so we wont change originals)
2. Convert them with handbrake. For multiple files choose Source > Folder (Batch Scan) > Add to Queue > All
3. Move converted files to separate folder
4. Copy zzz.bat to new folder and run it
5. Manually change dates of new files of videos to liking
6. Move the new files to iCloud upload folder

---

#### Extra info

Changing image EXIF date with `jhead`:
```sh
jhead -mkexif *.jpg
jhead -ts2017:06:01-12:00:00 *.jpg
```
