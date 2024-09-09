#!/bin/bash
declare attempt=0
guess_num=0
secret_num=$((RANDOM % 11))

echo "Welcome to the Number Guessing Game!" 

while [ "$guess_num" -ne $secret_num ] ; do 
	read -p "" guess_num
	attempt=$(expr $attempt + 1)

	if [ "$guess_num" == 0 ] ; then
		echo "Thanks for playing. Goodbye!"
		exit 0
	fi

	[ "$guess_num" -lt $secret_num ] && echo "Too low! Try again."
	[ "$guess_num" -gt $secret_num ] && echo "Too high! Try again."
done

echo "Congratulations! You guessed the correct number in $attempt attempts."

