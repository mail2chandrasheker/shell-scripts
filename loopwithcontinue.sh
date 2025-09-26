#!/bin/bash
for i in 1 2 3 4
do
   if [  $i  -eq 3 ]
   then
      echo "skipping $i"
      continue
     fi

    echo "number $i"
done
