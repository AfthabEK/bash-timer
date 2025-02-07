#!/bin/bash

if [ -z "$1" ]; then
	echo "Usage: $0 <minutes>"
	exit 1
fi

minutes=$1

duration=$((minutes * 60))

start=$SECONDS

while ((SECONDS-start < duration));
do
	:
done


ffplay -nodisp -autoexit klee.m4a
