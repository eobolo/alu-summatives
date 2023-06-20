#!/usr/bin/env bash
#updating student details using the student ID
echo "What do you want to update, write in lowercase, or input quit to exit"
read -r UPDATE
echo "give me student ID"
read -r STUDENTID
if [ "$UPDATE" = "age" ];
then
	echo "Enter your previous Age"
	read -r OLDAGE
	echo "Enter your new Age"
	read -r NEWAGE
	awk -v ID="$STUDENTID" -v oldage="$OLDAGE" -v newage="$NEWAGE" '/ID/ {sub(oldage, newage, $0)} 1' students-list_0333.txt > tempfile && mv tempfile students-list_0333.txt
	echo "Successfully updated!"
elif [ "$UPDATE" = "email" ];
then
	echo "Enter previous Email"
	read -r PREVEMAIL
	echo "Enter new Email"
	read -r NEWEMAIL
	awk -v ID="$STUDENTID" -v prevemail="$PREVEMAIL" -v newemail="$NEWEMAIL" '/ID/ {sub(prevemail, newemail, $0)} 1' students-list_0333.txt > tempfile && mv tempfile students-list_0333.txt
	echo "Sucessfully updated!"
elif [ "$UPDATE" = "quit" ];
then
	exit 1

fi
