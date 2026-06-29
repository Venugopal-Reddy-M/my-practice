#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script_logs_practice "
LOGS_FILE="/var/log/shell-script_logs_practice/$0.log"

if [ $USERID -ne 0 ]; then
   echo "run the script root level"
   exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2 ... FAILURE"
        exit 1
    else 
       echo "$2 ... SUCCESS"
    fi   
}

dnf install nginx -y &>> $LOGS_FILE
VALIDATE $? "installing Nginx"