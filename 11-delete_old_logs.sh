#!/bin/bash

#create the directory and file variables
LOGS_DIR=/home/ec2-user/app_logs
LOGS_FILE="$LOGS_DIR/$0.log"

R="\e[31m"
G="\e[1;32m"
Y="\e[33m"
N="\e[0m"

#check the directory is exit or not

if [ ! -d $LOGS_DIR ]; then
   echo -e "$LOGS_DIR Does not exit"
   exit 1
fi

FILES_TO_DELETE=$(find $LOGS_DIR -name "*.log" -type f -mtime -14)
 echo"$FILES_TO_DELETE"

###############################
## IFS=internal field separater  
################################

#  while IFS= read -r filepath; do
#  echo"Deleteing file:$filepath"
#  rm -f $filepath
#  echo "Delete file: $filepath"
#  done  <<< $FILES_TO_DELETE