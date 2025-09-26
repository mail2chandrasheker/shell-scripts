#!/bin/bash
read -p "enter age:" age
if [ $age -ge 18 ] && [ $age -le 60 ]
then
   echo "Eligible for work"
else
    echo "not eligible"
fi
