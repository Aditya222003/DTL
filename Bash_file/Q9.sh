#!/bin/bash

file_path="/home/richforever/adas.txt"

if [ -e "$file_path" ]; then
    echo "File exists and hello world returned in it"
    echo "hello world" > "$file_path"
else
    echo "File not exists and hello world returned in it"
    echo "hello world" > "$file_path"
fi
