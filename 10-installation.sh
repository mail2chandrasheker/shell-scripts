#!/bin/bash

USERID=$(id -u)

if [ $USER -ne 0]; then
   echo "ERROR: Please run this sccript with root privelege"
fi
dnf install mysql -y

if [ $? -ne 0 ]; then
   echo "ERROR: installing mysql is failure"
else
   echo "Installing mysql is success"

fi