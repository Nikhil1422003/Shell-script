#!/bin/bash

USERID=$(id-u)

VALIDATE(){

if [ $1 -ne 0 ]
then
    echo "$2 ....FAILURE"
    exit 1
else 
    echo "$2 ....SUCCESS"
fi

}

if [ $USERID -ne 0 ]
then
    echo "Please run this script as root user"
    exit 1
else
    echo "You are super user"
fi 

apt install mysql-server -y
VALIDATE $? "Installing mysql"

apt install git -y
VALIDATE $? "Installing git"