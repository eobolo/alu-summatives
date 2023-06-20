#!/usr/bin/env bash
#our main.sh is our application

while true;
do
	echo "Welcome to Bachelor of Software Engineering cohort list of students app"
	sleep 2
	echo "Enter 1 for create new record, 2 for listing saved student details, 3 for deleting student detail, 4 for updating existing student record, 5 to exit application"
	sleep 2
	read -r OPTION
	case "$OPTION" in
		"1")
			echo "creating a new record..."
			source createrecord.sh
			;;
		"2")
			echo "listing saved students"
			source liststudents.sh
			;;
		"3")
			echo "deleting saved student details..."
			source deletestudent.sh
			;;
		"4")
			echo "updating student details..."
			source updatedetails.sh
			;;
		"5")
			echo "exiting application..."
			exit 1
			;;
		*)
			echo "invalid option"
			echo "options are from 1 to 5"
			;;
	esac
done	
