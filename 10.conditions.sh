#!/bin/bash

#conditions

given_number=${11}

echo $SHELL

echo $#

expected_output=${12}


if [ $given_number -eq $expected_output ]
then
    echo "Given number ${given_number} is equal to $expected_output"
else
    echo "Given number ${given_number} is not equal to $expected_output"
fi

#-eq, -ne, -gt, -lt, -ge, -le