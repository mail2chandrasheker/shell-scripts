#!/bin/bash

#validate the user is root or normla

userid=$(id  -u)

if [ "$userid"   -ne  0] ; then
   echo "Error:: you   are  not root user"
   exit 1
fi

validate(){
    if [ $1 -ne  0 ]; then
        echo "Error:: insatalling $2 is failed"
    else
        echo "installing $2 is success"
}

dnf install mysql -y
validate $? "MYSQL"
dnf install nginx -y
validate $? "Nginx"
