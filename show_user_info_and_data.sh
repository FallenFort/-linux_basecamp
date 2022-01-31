#!/bin/bash

username=$(whoami)
DIR_PATH=$(pwd)

#I can't understand how to put the text in the end of string... Maybe I need to do this with loop func?
echo "$(find $DIR_PATH -user $username -exec echo 'is found!' {} \;)"

if [ $username == olek ]; then
	echo "$(ps -o pid,user,cmd -u $username)"
else
	echo 'Finding “root” user data is not allowed!'
	exit 42
fi
