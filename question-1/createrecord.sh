#!/usr/bin/env bash
#our main.sh that takes record of every user created
#create the student record
echo "Please input your student email:"
read -r STUDENTEMAIL
echo "Please input your age:"
read -r AGE
echo "Please input your studentid:"
read -r STUDENTID
echo "{STUDENTEMAIL:$STUDENTEMAIL, AGE:$AGE, STUDENTID:$STUDENTID}" >> "students-list_0333.txt"
