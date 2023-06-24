#!/usr/bin/env bash
#getting records from user
START=0
read -r -p "Enter the number of records you want: " NUMBER
while [ "$START" -lt "$NUMBER" ];
do
	read -r -p "please give me student id: " STUDENTID
	if [ "$NUMBER" -eq 0 ];
	then
		echo "you inputed $NUMBER, so no number of records can be shown."
		read -r -p "Re-enter the number of records, number should be greater than zero: " NUMBER
	else
		grep -Ewi "$STUDENTID" students-list_0333.txt
	fi
	((START++))
done
echo "Students record succesfully gotten..."
