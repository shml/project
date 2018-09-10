#! /usr/bin/env bash
# File: guessinggame.sh

numFiles=$(ls -l | grep "^-" | wc -l)

function question {
	echo "How many files are in the current directory?"
	read input
	}

while [[ $numFiles -ne $input ]]
	do
	question
	
	if [[ $input -lt $numFiles ]]
		then
		echo "it's too low."
		
	elif [[ $input -gt $numFiles ]]
		then
		echo "it's too high."
	fi
	done
	echo "Congratulation you guess!!!!!!"
