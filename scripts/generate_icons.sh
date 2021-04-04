#!/usr/bin/env sh

sizes=( 20 29 40 48 55 58 60 76 80 87 88 100 120 152 167 172 180 196 216 512 1024 )

for size in "${sizes[@]}" 
do
	convert -background "#455a64" $1 -resize "${size}x${size}" "Icon$size.png"
done

