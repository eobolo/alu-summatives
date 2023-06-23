#!/usr/bin/env bash
#automatically move files to negpod_id-q1
LIST=$(ls)
mkdir "0323-RW-SOFEN-8120120-14_q1"
for FILE in $LIST;
do
	if [ -a "$FILE" ];
	then
		mv "$FILE" "0323-RW-SOFEN-8120120-14_q1"
	fi
done	
