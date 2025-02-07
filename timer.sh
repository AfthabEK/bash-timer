#!/bin/bash


minutes=${1:-25}

duration=$((minutes * 60))

start=$SECONDS

while ((SECONDS-start < duration));
do
	remaining=$((duration-(SECONDS - start)))
	minutes_left=$((remaining / 60))
	seconds_left=$((remaining % 60))

	echo -ne "\rTime left: ${minutes_left}m ${seconds_left}s   "
	sleep 1
done

echo -e "\nTime's up!"

ffplay -nodisp -autoexit klee.m4a
