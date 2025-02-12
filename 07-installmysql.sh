#!/bin/bash

#our goal is to install mysql
USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR: tell the user to run with sudo access"
    exit 1
#it is our responsibility to check installation is successful or not

yum intall mysql -y
if [ $? -ne 0 ]
then
    echo "installation of mysql is failure"
    exit 1
else
    echo "installation of mysql is success"
fi

