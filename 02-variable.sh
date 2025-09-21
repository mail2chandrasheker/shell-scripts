#!/bin/bash
echo "ALL variable passed to the script $@"
echo "ALL variable passed to the secript $*"
echo "script name: $0"
echo "current directory $PWD"
echo  "who is running user $USER"
echo "home directory of user $HOME"
echo "PID of ths script: $$"
sleep 50&
echo "PID of the last command is background is : $!"