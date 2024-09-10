#!/bin/bash

####this is just to show I am under standing things

touch /home/neost/for_fun/fun
touch /home/neost/for_fun/fun/README.md
cp /home/neost/for_fun/number_guessing_game.sh /home/neost/for_fun/fun/fun.sh

chmod -x /home/neost/for_fun/fun/fun.sh
./home/neost/for_fun/fun/fun.sh

while [ $(grep -c "100" "/home/neost/for_fun/fun/fun.txt") =~ 1]; do

	######Making limit for attempts at guess of the number
	if  [ $(grep -c "100" "/home/neost/for_fun/fun/fun.txt") -eq 1]; then
      		echo "you have reached your limit goodbye!"
	else
      		continue
	fi
done

rmdir /home/neost/for_fun/fun
 
