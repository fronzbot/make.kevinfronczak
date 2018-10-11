#!/bin/bash

if [ -z "$1" ]
then
   echo "Missing argument: filename"; 
   exit 1;
fi
if [-z "$2" ]
then
   echo "Missing argument: watermark";
   exit 1;
fi
if [-z "$3" ]
then
   echo "Missing argument: output file";
   exit 1;
fi

video=$1
watermark=$2
outfile=$3

ffmpeg -y -i $video -i $watermark -filter_complex "[1]lut=a=val*0.3[a];[0][a]overlay=0:0" -c:v libx264 -an $outfile

echo "Done!";
