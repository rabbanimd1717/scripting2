#!/bin/bash

echo "Sample code with practice"

#variables

person1=Rabbani
person2=MDR

echo "$person1 is a devops engineer"

echo "$person2 is a billionarie"

echo "$person1 and $person2 is same persons"

#command line argument

person1=$1
script_name=$0
PERSON2=$2

echo "$person1 is a devops engineer"

echo "$PERSON2 is a billionarie"

echo "$person1 and $PERSON2 is same persons"



