#!/bin/bash

file_count=0
dir_count=0

for i in *; do
    if [ -f "$i" ]; then
        file_count=$((file_count + 1))
    elif [ -d "$i" ]; then
        dir_count=$((dir_count + 1))
    fi
done

echo "Number of files: $file_count, directories: $dir_count"
