#!/bin/bash

#############################################
# Script to delete users from Linux server. #
#############################################

# Variables
users=./users.csv
group="developers"

# Check if user is root
if [ $EUID -ne 0 ];
then
	echo "You must be root to run this script" >&2
	exit 1
fi

# Check if file containing usernames exists
if [ ! -f $users ];
then
	echo "$users file not found" >&2
	exit 1
fi

# Deletes users
for user in `cat $users`;
do
	# Check if user exists
	if id $user >/dev/null 2>&1;
	then
		echo "User $user does not exist"
	else
		# Delete user from 
		echo "Deleting $user ..."
		deluser --remove-home $user >/dev/null
		echo "User $user deleted"
	fi
done
