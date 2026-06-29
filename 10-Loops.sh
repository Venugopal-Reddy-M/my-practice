#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script_logs_practice"
LOGS_FILE="/var/log/shell-script_logs_practice/$0.log" 
if [ $USERID -ne 0 ]; then
    echo "please run the root level."
    exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
      echo "$2.... FAILURE" | tee -a $LOGS_FILE
      exit 1
    else
      echo "$2.... SUCCUSE" | tee -a $LOGS_FILE
    fi
}

for package in "$@"
do
dnf install $package -y &>> $LOGS_FILE
VALIDATE $? "$package install"

done