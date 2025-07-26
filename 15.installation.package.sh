#!/bin/bash

USER_ID=(id -u)


if [ $USER_ID -eq 0 ]
then
    echo "This is super user...proceed to install the packages"
else
    echo "This not a super user....dont go to further"
fi

