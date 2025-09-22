#!/bin/bash
USERID = $(id -u)
if [ $USERID -ne 0]; then
    echo "Error:: pleae run this script with user perviliages"
    exit 1 # failure is other than 0
fi

dno install mysql -y

if [$? -ne 0 ]; then 
    echo "ERROR: Installing  MYSQL is failure"
    exit 1
else
   echo "Installing mysql is sccess"

fi

dnf install nginx y
if [$? -ne 0 ]; then 
    echo "ERROR: Installing  nginx is failure"
    exit 1
else
   echo "Installing nginx is sccess"

fi

dnf install mongodb y
if [$? -ne 0 ]; then 
    echo "ERROR: Installing  mongodb is failure"
    exit 1
else
   echo "Installing mongodb is sccess"

fi