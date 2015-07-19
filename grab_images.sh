#!/bin/bash

# Downloads all files from the camera to DEST_DIR, and then renames
# them based on date.

DEST_DIR=~/photo_import

mkdir -p ~/photo_import

# Get all files
pushd .
cd $DEST_DIR
gphoto2 --get-all-files
popd

# Rename files to be date-based
exiftool "-FileName<CreateDate" -d "%Y-%m-%d_%H-%M-%S%%-c.%%le" $DEST_DIR

# Move the files into folders per day
exiftool -d $DEST_DIR/%Y-%m-%d "-directory<datetimeoriginal" ./*
