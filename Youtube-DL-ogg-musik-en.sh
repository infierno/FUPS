#!/bin/sh
# Download Video and converts it into MP3 for the ID3-Tags 
# 

echo What ist the adress of the Youtube-URL?.
read VIDEO
echo Title of the Band/Singer?.
read ARTIST
echo Title of the Video/Song?.
read NAME
echo Title of the Album?.
read ALBUM
echo Year of the Song?.
read YEAR
youtube-dl $VIDEO -o "/home/sebids/Musik/${ARTIST} - ${NAME}.mp4"
ffmpeg -i "/home/sebids/Musik/${ARTIST} - ${NAME}.mp4" "/home/sebids/Musik/${ARTIST} - ${NAME}.mp3"
id3v2 -a "${ARTIST}" -t "${NAME}" -A "${ALBUM}" -y "${YEAR}" "/home/sebids/Musik/${ARTIST} - ${NAME}.mp3"
sox "/home/sebids/Musik/${ARTIST} - ${NAME}.mp3" "/home/sebids/Musik/${ARTIST} - ${NAME}.ogg";
rm -rf "/home/sebids/Musik/${ARTIST} - ${NAME}.mp4"
rm -rf "/home/sebids/Musik/${ARTIST} - ${NAME}.mp3"
echo Download and Converting succesfull!
