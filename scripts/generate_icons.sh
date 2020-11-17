#!/usr/bin/env sh

convert -background none $1 -resize 64x64 favicon.ico
convert -background none $1 -resize 192x192 logo192.png
convert -background none $1 -resize 512x512 logo512.png

