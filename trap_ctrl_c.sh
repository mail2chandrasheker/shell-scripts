#!/bin/bash
trap "echo 'ctrl+c presed,script stopping safely ...';exit" SIGINT

echo "Running... press Ctrl+c to stop"
while true
do 
   sleep 1
done
