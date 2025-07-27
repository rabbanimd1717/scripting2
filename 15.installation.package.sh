#!/bin/bash

USER_ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f2)
LOGSFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log

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


for i in $@
do
    echo "package install: $i"
    dnf list installed $i &>> $LOGSFILE
    if [ $? -eq 0 ]
    then
        echo "$i is installed: skipping"
    else
        dnf install $i  -y &>> $LOGSFILE
        VALIDATE_FUN $? "INSTALLING of $i"
    fi
done