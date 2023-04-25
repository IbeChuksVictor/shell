#!/bin/bash

# Script to add users to Linux system

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

# Check if group exists
getent group "$group" >/dev/null || groupadd $group

# Add users
for user in `cat $users`;
do

	# Check if user exists
	if id $user >/dev/null 2>&1;
	then
		echo "User $user already exists"

	else
		# Create user and add to group
		echo "Creating user $user ..."
		useradd -m -g $group $user
		echo "User $user created"

		# Create SSH directory and generate SSH Keys
		sudo -u "$user" mkdir -p /home/"$user"/.ssh
		sudo -u "$user" ssh-keygen -t rsa -b 2048 -f /home/"$user"/.ssh/id_rsa -q -N ""

		# Set permissions for .ssh directory and keys
		chown -R "$user":"$user" /home/"$user"/.ssh
		chown -R "$user":"$user" /home/"$user"/.ssh/id_rsa
		chmod -R 700 /home/"$user"/.ssh
		chmod 600 /home/"$user"/.ssh/id_rsa
	fi
done
