#!/bin/bash
read -p "eneter a number: " num

if [ $num -gt 0 ]
then
   echo "positive number"
elif [  $num -lt 0 ]
then
   echo "negative number"
else
   echo "zero"
fi
