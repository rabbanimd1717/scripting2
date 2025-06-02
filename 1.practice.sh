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


#read input

echo "enter your bike name with variant"

read bike_name

echo "bike name is $bike_name"

#read input with prompt

echo "enter your name"

read -p "enter your name" person_name person_age

echo "person name is $person_name and person age is $person_age"


#read input with silent with prompt

echo "enter user_name"

echo "enter password"

read -s -p "username is :" username

read -s -p "password is : " userpassword

echo "$username and $userpassword"



