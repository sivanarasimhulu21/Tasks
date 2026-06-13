#!/bin/bash

echo "press 1 to create a user,or press 0 to exit"
read ans

while [ "$ans" -eq 1 ]; do
	echo "Enter UserName:"
	read unmae

	#Check if user Already exists
	if id "$unmae" &>/dev/null; then
	 echo "user $unmae Already Exists!"
	else
	    sudo useradd -m -s /bin/bash "$unmae"
	    echo "user $uname created Successfully!"
	fi

	echo"Do you wish to continue creating users?press 1for yes,0 for NO."
	read ans
done

echo "user Creation process completion"

