#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

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
      echo -e "$R$2.... FAILURE$N" | tee -a $LOGS_FILE
      exit 1
    else
      echo -e "$2.... $G SUCCUSE$N" | tee -a $LOGS_FILE
    fi
}

for package in "$@"
do
dnf install $package -y &>> $LOGS_FILE
VALIDATE $? "$package install"

done