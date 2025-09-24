#!/bin/bash
file="/etc/passwd"

if [ -f $file ]
then    
   echo "file is there"
else
   echo "no file"

fi