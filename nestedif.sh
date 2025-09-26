#!/bin/bash
read -p "enter a number " num
if [ $num -gt 0 ]
then 
   if [ $((num % 2)) -eq 0 ]
    then
       echo "Positive even"
     else
       echo "positive odd"
    fi
else
   echo "not positive"
fi
