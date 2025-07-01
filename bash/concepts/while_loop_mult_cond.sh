#!/bin/bash

i=0
while echo "this is the state of the i : $i"
	echo "nevermind this is : $i"
	echo "oops that was : $i"
	[ $i -lt 10 ]
	do
		echo "$i eme lol"
		let "i += 1"
	done
exit
