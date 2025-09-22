#!/bin/bash

NUMBER=$1
if [$NUMBER -lt 10 ]; then
   echo "Given number $NUMBER is less than 1o"
else
   echo "Given number $NUMBER is greater tha or equal to 1o"

# -gt ,-eq , -lt, -ne