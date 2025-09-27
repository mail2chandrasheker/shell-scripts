#!/bin/bash
userid=$(id -u)
if [ "$userid" -eq 0 ]; then
    echo "your are root"
else
    echo "your are normal  user"
fi
