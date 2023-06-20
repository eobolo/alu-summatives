#!/bin/bash

students_file="students-list_0333.txt"
emails_file="student-emails.txt"

while true; do
    echo "--------------------------------"
    echo "Bachelor of Software Engineering Cohort List"
    echo "1. Create student record"
    echo "2. View all students"
    echo "3. Delete student"
    echo "4. Update student record"
    echo "5. Exit"
    echo "--------------------------------"
    read -p "Enter your choice: " choice

    case $choice in
        1) # Create student record
            read -p "Enter student email: " email
            read -p "Enter student age: " age
            read -p "Enter student ID: " student_id
            echo "$email $age $student_id" >> "$students_file"
            echo "Student record created."
            ;;
        2) # View all students
            echo "Student list:"
            cat "$students_file"
            ;;
        3) # Delete student
            read -p "Enter student ID to delete: " delete_id
            sed -i "/\b$delete_id\b/d" "$students_file"
            echo "Student deleted."
            ;;
        4) # Update student record
            read -p "Enter student ID to update: " update_id
            if grep -q "\<$update_id\>" "$students_file"; then
                read -p "Enter new email: " new_email
                read -p "Enter new age: " new_age
                sed -i "s/\<$update_id\>\(.*\)/$new_email $new_age $update_id/" "$students_file"
                echo "Student record updated."
            else
                echo "Student not found."
            fi
            ;;
        5) # Exit
            echo "Exiting application."
            exit 0
            ;;
        *) # Invalid choice
            echo "Invalid choice. Please try again."
            ;;
    esac
done

