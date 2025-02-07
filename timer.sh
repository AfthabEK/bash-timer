#!/bin/bash

start=$SECONDS

while ((SECONDS-start < 5));
do
	:
done


ffplay -nodisp -autoexit klee.m4a
echo "5SecondsLOL"
