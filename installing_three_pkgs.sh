#!/bin/bash

#validate the user is root or normla
R="\e[31m"
G="\e[32m"
N="\e[0m"

userid=$(id  -u)

if [ "$userid"   -ne  0 ] ; then
   echo -e "$R Error:: you   are  not root user $N"
   exit 1
fi

validate(){
    if [ $1 -ne  0 ]; then
        echo -e "$R Error:: insatalling $2 is failed $N"
    else
        echo -e "$G installing $2 is success $N"
    fi
}

dnf install mysql -y
validate $? "MYSQL"

dnf install nginx -y
validate $? "Nginx"
