#!/usr/bin/env sh

brews=( brew.essentials )
casks=( cask.essentials )

for file in "${brews[@]}"; do
	cat $file | while read p; do
		echo "Installing $p"
		brew install $p
	done
done

