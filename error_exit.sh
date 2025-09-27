#!/bin/bash
file="/no/such/file"
if [ ! -f "$file" ]; then
    echo "File not found"
    exit 1
fi
