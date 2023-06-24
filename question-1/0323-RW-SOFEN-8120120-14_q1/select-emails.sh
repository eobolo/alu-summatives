#!/usr/bin/env bash
#select emails of student
FILE="students-list_0333.txt"

#function to get Emails
get_Emails(){
	echo "getting the emails..."
	sleep 2
	cut -d "," -f 1 "$FILE" | tr "{" ":" | cut -d ":" -f 3 > student-emails.txt
	sleep 2
	echo "emails successfully gotten..."
}
get_Emails
