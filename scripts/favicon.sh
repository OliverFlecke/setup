#!/usr/bin/env sh
# Script to generate a .ico file from an svg in the standard sizes

convert -density 300 -define icon:auto-resize=256,128,96,64,48,32,16 -background none favicon.svg favicon.ico
