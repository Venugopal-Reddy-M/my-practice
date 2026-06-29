#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "run the script root level"
   exit 1
fi
