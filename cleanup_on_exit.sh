#!/bin/bash
trap "echo 'Cleaning temporay files...' rm -f temp.txt"  EXIT
echo "Creating temp file...."
touch temp.txt
echo "Script working..."
sleep 3
echo "Exiting...."
