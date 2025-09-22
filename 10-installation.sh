#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "ERROR: Please run this sccript with root privelege"
   exit 1 # failure is other than 0
fi
dnf install mysql -y

if [ $? -ne 0 ]; then
   echo "ERROR: installing mysql is failure"
   exit 1
else
   echo "Installing mysql is success"
   

fi