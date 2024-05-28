#!/bin/bash

if [[ "$1" == *"$"* || "$2" == *"$"* ]]; then
	echo "Error: Please do not try to be FUNNY parrot. '$' can not be ALLOW!!!"
	exit 1

fi

name=$1
owner=$2


echo "Meowers $name! Welcome to my parrot world!"
echo "This is owned by $owner exclusively"
