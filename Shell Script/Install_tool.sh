#!/bin/bash

echo "Enter  the tool name"
read tool

#check if the tool exists
if which "$tool" &> /dev/null; then
	echo"$tool already exists"
else
    echo"$tool not found,Installing $tool"
    sudo apt install "$tool" -y &> /dev/null
    echo "$tool Installed"
fi
