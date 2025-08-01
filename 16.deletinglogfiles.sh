#!/bin/bash
SOURCE_DIRECTORY=/tmp/app-logs



if [ $? -eq 0 ]
then
    echo "Directory already created"
else
    echo "Directory not created"
    mkdir -p $SOURCE_DIRECTORY
    exit 1
fi




if [ -d $SOURCE_DIRECTORY ]
then
    echo "$SOURCE_DIRECTORY is exists"
else
    echo "$SOURCE_DIRECTORY does not exit please make sure $SOURCE_DIRECTORY"
fi 

ls -l


#while loop


