#!/bin/bash

#package installation

#if you want to write and execute linux commands in shell script using $() in inside the braces you nedd to write

USER_ID=$(id -u)

if [ $USER_ID -eq 0 ]
then
    echo "This is super user proceed to run the package"
else
    echo "This is not sudo user not proceeding further"
    exit 1 #manually ecit if error comes
fi

dnf install git -y

if [ $? -eq 0 ] #$? to check/status of previous exit command if success shown 0 if failure shown 1 to 127
then
    echo "Git installtion is SUCCESS"
else
    echo "Git installation is FAILURE"
    exit 1
fi

echo "installing git"

