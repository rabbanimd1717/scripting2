#!/bin/bash

#functions

#block of code is repeating, considering function

USER_ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | awk -F "." '{print $2F}')
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log


FUN_Name(){
    echo $PWD
    echo $0
}

FUN_Name

new_fun(){
    if [ $1 -eq 0 ]
    then
        echo "$2 is SUCCESS"
    else
        echo "$2 is FAILURE"
        exit 1
    fi
}


if [ $USER_ID -ne 0 ]
then
    echo "This is not super user....dont go to further"
else
    echo "This is SUPER USER then install packages"
fi

dnf install git -y &>>$LOGFILE
new_fun $? "installing git"

dnf install mysql1 -y &>>$LOGFILE
new_fun $? "installing mysql"

