#!/bin/bash

var=0
while [ $var -lt 10 ]   # Ne pas oublier le $ devant le nom de var. Brackets sont obligatoires (sauf avec getops)
	do
		echo "test"
		#let "var += 1"
		var=$(($var+1))
	done
exit
