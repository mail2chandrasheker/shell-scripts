#!/bin/bash
LOGFILE="mylog.log"

echo "$(date): Script started" >> $LOGFILE

ls /etc/passwd 2>&1 $LOGFILE

if [ $? -eq 0 ]; then
    echo "$(date): command sucess" >> $LOGFILE
else
   echo "$(date): command failed" >> $LOGFILE
fi
