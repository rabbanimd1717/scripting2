#!/bin/bash

USER_ID=$(id -u)

VALIDATE_FUN(){
    if [ $1 -eq 0 ]
    then
        echo "$2 is SUCCESS"
    else
        echo "$2 is FAILURE"
    fi
}


if [ $USER_ID -eq 0 ]
then
    echo "This is super user...proceed to install the packages"
else
    echo "This not a super user....dont go to further"
    exit 1
fi

dnf install mysql -y



VALIDATE_FUN $? "INSTALLING MYSQL"