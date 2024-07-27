#!/bin/bash
input="file.txt"
while read -r line
do
  echo "$line" | rev
done < "$input"
