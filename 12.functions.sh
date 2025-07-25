#!/bin/bash

#functions

#block of code is repeating, considering function

USER_ID=$(id -u)


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

dnf install git -y

if [ $? -eq 0 ]
then
    echo "installation of git is SUCCESS"
else
    echo "installation of git is FAILURE"
fi

new_fun $? "installing git"



dnf install mysql -y

if [ $? -eq 0 ]
then 
    echo "installation of mysql is SUCCESS"
else
    echo "installation of mysql is FAILURE"
    exit 0
fi

new_fun $? "installing mysql"

