#!/bin/bash

#first check the user  is root or normal user
userid=$(id -u)

if [ $userid  -ne 0 ]; then
    echo "Error:: please run this script with root user"
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
   echo  "Error: Installing mysql is failed"
    exit 1
else
   echo "Installating mysql is success"
fi

dnf install nginx -y

if [ $? -ne 0]; then
    echo "Error:: installing nginx is  failed"
    exit 1
else
    echo "installing  nginx is success"
