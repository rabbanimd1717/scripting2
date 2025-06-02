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


#read input with silent 

echo "enter user_name"

echo "enter password"

read -s user_name

read -s user_password

echo "$user_name and $user_password"



#read input with silent and prompt

echo "enter user_name"

echo "enter password"

read -s -p "enter your name:" user_name

read -s -p "enter your password:" user_password

echo "$user_name and $user_password"


# practice with Arrays

favourite_players=("Raina" "Hayden" "Hussey")

echo "my die hard fan is: ${favourite_players[0]}"

echo "my all time favourites is: ${favourite_players[@]}"

# using and practicing arthmetic

NUMBER1=${11}
NUMBER2=${12}

echo "addition of 2 numbers : $((NUMBER1+NUMBER2))"

echo "$NUMBER1 and $NUMBER2"


















