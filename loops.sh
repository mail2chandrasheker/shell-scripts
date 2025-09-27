#!/bin/bash

#validate the user is root or normla
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[033m"
userid=$(id  -u)

logs_folder="/var/log/shell-script"
script_name=$( echo $0 | cut -d "." -f1 )
log_file="$logs_folder/$script_name.log"

mkdir -p $logs_folder

echo "script started executed at:$(date)"
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

for package in $@
do
   dnf list installed $package &>>$log_file
   #if exit status
    if [ $? -ne 0 ] ; then
       dnf install $package -y &>>$log_file
       validate  $? "$package"
     else
        echo -e "pakcag is already installed ...$Y skippping $n"
done

