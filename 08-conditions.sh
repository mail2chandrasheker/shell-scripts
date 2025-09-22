#!/bin/bash

echo "Please enter the number"
read NUMBER

if[ $((NUMBER %2)) -e1 0]
then 
    echo "Given number $NUMBER is Even"
else
    echo "Given number $NUMBER is odd"
    
fi