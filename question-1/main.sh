#!/usr/bin/env bash
#our main.sh is our application

while true;
do
	echo "--------------------------------"
    	echo "Bachelor of Software Engineering Cohort List"
    	echo "1. Create student record"
    	echo "2. View all students"
    	echo "3. Delete student"
    	echo "4. Update student record"
    	echo "5. Exit"
    	echo "--------------------------------"
	read -r -p "Enter your choice: " CHOICE
	case "$CHOICE" in
		"1")
			echo "creating a new record..."
			../createrecord.sh
			;;
		"2")
			echo "listing saved students"
			../liststudents.sh
			;;
		"3")
			echo "deleting saved student details..."
			../deletestudent.sh
			;;
		"4")
			echo "updating student details..."
			../updatedetails.sh
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
