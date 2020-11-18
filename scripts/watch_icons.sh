#!/usr/bin/env sh

sizes=( 48 55 58 87 80 88 100 172 196 216 1024 )

for size in "${sizes[@]}" 
do
	convert -background none $1 -resize "${size}x${size}" "icon$size.png"
done

