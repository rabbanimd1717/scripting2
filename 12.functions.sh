#!/bin/bash

#functions

#block of code is repeating, considering function

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]
then
    echo "This is not super user....dont go to further"
else
    echo "This is SUPER USER then install packages"
fi
