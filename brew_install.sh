#!/usr/bin/env sh

cat ./brews | while read p; do
    brew install $p;
done

cat ./brew_casks | while read p; do
    brew cask install $p;
done

