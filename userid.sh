#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ] ;then
    echo "ERROR::Please run this cript with root privelage"
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ];then
    echo "ERROR:: installing mysql is failure"
    exit 1
else
    echo "Installing mysql is success"
    exit 0
fi
