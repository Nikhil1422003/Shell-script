#!/bin/bash

USERID$=(id -u)

if [ $USERID -ne o ]
then 
    echo "Please run this script with root access"
    exit 1 #manually exit if error comes.
else 
    echo "You are super user."
fi

apt install mysql-server -y

echo "is script proceeding?"