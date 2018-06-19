#!/bin/bash

if [ -z "$1" ]
then
   echo "Missing argument: file directory"; 
   exit 1;
fi

image_path=$1

size_before=$(du -sh $image_path 2>&1)

find $image_path -name "*.jpg" -exec convert {} -verbose -resize 1024x {} \;
find $image_path -name "*.jpg" -exec jpegoptim --max=70 --threshold=5 --verbose {} \;
find $image_path -name "*.png" -exec optipng -v  -o2 \;

echo "Size pre-compression: $size_before"
echo "Size after:"
du -sh $image_path
