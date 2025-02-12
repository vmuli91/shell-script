#!/bin/bash

#our goal is to install mysql
USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR: please run this script with root access"
    exit 1
fi

#it is our responsibility to check installation is successful or not
yum intall git -y

if [ $? -ne 0 ]
then
    echo "installation of git is failure"
    exit 1
else
    echo "installation of git is success"
fi