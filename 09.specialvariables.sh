#!/bin/bash

#special varaibles

echo "print all variables while passing the shell script running: $@"
echo "Number of variables passed: $#"
echo "To show shell script: $0 and $SHELL and ps -p $$"
echo "Current working directory: $PWD"
echo "Home directory of the current user: $HOME"
echo "Which user is running the script: $USER"
echo "Hostname of the server: $HOSTNAME"
echo "process id of the current shell script: $$"
