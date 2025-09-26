#!/bin/bash
file="test.txt"

if [ -f "$file" ]
then
    echo "File $file  is there"
else
    echo "File $file no"
fi
