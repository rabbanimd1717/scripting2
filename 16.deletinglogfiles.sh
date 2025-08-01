#!/bin/bash
SOURCE_DIRECTORY=/tmp/app-logs

if [ -d $SOURCE_DIRECTORY ]
then
    echo "$SOURCE_DIRECTORY is exists"
else
    echo "$SOURCE_DIRECTORY does not exit please make sure $SOURCE_DIRECTORY"
fi 
