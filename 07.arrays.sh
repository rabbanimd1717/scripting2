#!/bin/bash

#Data types

#ARRAYS - it can store multiple values

MOVIES=("Manmadhudu" "Jalsa" "khaleja")

#Arrays we call index 0,1,2
#size is 1,2,3 like 3

echo "My first favourite movie is: ${MOVIES[0]}"
echo "My second fav movie is: ${MOVIES[1]}"
echo "size of this movies: ${MOVIES[@]}