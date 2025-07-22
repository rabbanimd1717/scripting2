#!/bin/bash

#package installation

#if you want to write and execute linux commands in shell script using $() in inside the braces you nedd to write

USER_ID=$(id -u)

if [ USER_ID -eq 0 ]
then
    echo "This is super user proceed to run the package"
    exit 1
else
    echo "This is not sudo user not proceeding further"
fi

dnf install mysql -y

echo "installing mysql"

