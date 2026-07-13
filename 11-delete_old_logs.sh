#!/bin/bash

# Directory containing log files
LOGS_DIR=/home/ec2-user/app_logs
# Log file for this script (if you want to log script output)
LOGS_FILE="$LOGS_DIR/$0.log"
# Color codes for output
R="\e[31m"
G="\e[1;32m"
Y="\e[33m"
N="\e[0m"

# Check whether the log directory exists
#check the directory is exit or not

if [ ! -d $LOGS_DIR ]; then
   echo -e "$LOGS_DIR Does not exit"
   exit 1
else echo -e "$G files are exist...$LOGS_DIR $N"
fi

# Find all .log files less than 14 days
FILES_TO_DELETE=$(find $LOGS_DIR -name "*.log" -type f -mtime -14)
 echo "$FILES_TO_DELETE"

###############################
## IFS=internal field separater  
################################

 while IFS= read -r filepath; do
 echo "Deleteing file:$filepath"
 rm -f $filepath
 echo "Delete file: $filepath"
 done  <<< $FILES_TO_DELETE