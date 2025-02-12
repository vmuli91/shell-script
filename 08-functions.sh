#!/bin/bash

#our goal is to install mysql
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
USERID=$(id -u)

#this function should validate the previous command and inform user it is success or failure
VALIDATE(){
    #$1 ----> it will recieve the argument
    if [ $1 -ne 0 ]
    then
       echo "$2 ...FAILURE"
       exit 1
    else
       echo "$2 ----SUCCESS"
    fi
}

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "ERROR: please run this script with root access"
    exit 1
fi

#it is our responsibility to check installation is successful or not
yum install mysql -y &>>$LOGFILE

VALIDATE $? "installing MYSQL"

yum install postfix -y &>>$LOGFILE

VALIDATE $? "installing postfix"