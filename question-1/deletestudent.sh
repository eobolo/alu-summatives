#!/usr/bin/env bash
#delete student using id
echo "give me student ID"
read -r STUDENTID
sed -i "/$STUDENTID/d" students-list_0333.txt
echo "deleted successfully..."
