#!/bin/bash

### Special Variables ###

echo "All args passed to the script: $@"
echo "Number of vars passed to script: $#"
echo "script name: $0"
echo "Present dir: $PWD"
echo "who is running: $USER"
echo "Home dire of the current user: $HOME"
echo "PID of this script: $$"
sleep 100 &
echo "PID of recently executed background process: $!"
echo "ALL args passed to script: $*" 


##Data_type##
## in scripting two data types only
## 1.number
## 2.string

number1=100
number2=200
SUM=$((number1+$number2))
 echo "sum is: $SUM"