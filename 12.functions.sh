#!/bin/bash

#functions

#block of code is repeating, considering function

USER_ID=$(id -u)


FUN_Name(){
    echo $PWD
    echo $0
}

FUN_Name

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


echo "git is installed"



dnf install mysql1 -y

if [ $? -eq 0 ]
then 
    echo "installation of mysql is SUCCESS"
else
    echo "installation of mysql is FAILURE"
    exit 1
fi

echo "mysql is installed"

