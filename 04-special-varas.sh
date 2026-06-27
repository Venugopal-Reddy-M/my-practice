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