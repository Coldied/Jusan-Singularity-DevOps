#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "Not a root!"
    exit 1
fi

sudo apt-get update

upgradable=$(apt list --upgradable 2>/dev/null | grep -v "Listing..." | wc -l)

if [ "$upgradable" -eq 0 ]; then
    echo "No updates available"
    exit 0
else
    echo "Updates available"
fi

sudo apt-get -y upgrade

echo "System is up-to-date!"

