#!/usr/bin/env sh

# This is a small utility script to allow WSL to connect to screens inside of Windows.
# Requried for running Cypress from WSL.


# set DISPLAY variable to the IP automatically assigned to WSL2
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
/etc/init.d/dbus start &> /dev/null
