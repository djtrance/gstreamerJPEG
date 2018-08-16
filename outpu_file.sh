#!/bin/bash
while true
do
	for f in images/*.jpg
	do
        	cat  "$f"
#	echo "next >> "
		sleep 0.01
	done

done


