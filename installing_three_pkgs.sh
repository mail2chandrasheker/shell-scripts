#!/bin/bash

#validate the user is root or normla
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[033m"
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

dnf list installed mysql
if [ $? -ne 0 ];then
  dnf install mysql -y
  validate $? "MYSQL"
elso
    echo -e "Mysql already exist ...$Y SKipping$N"
fi

dnf list installed nginx
if [ $? -ne 0 ] ; then
   dnf install nginx -y
   validate $? "Nginx"
else
   echo -e "nginx already exist...$Y Skipping$N"
fi
