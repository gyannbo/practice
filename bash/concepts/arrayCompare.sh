#!/bin/bash

## this script was  written as a building block for a script that check all system git repos but excluding some by checking a file like .gitignore

array=(il etait une fois blanche neige et les septs nains)
diff=(who is blanche neige what about , septs nains)
i=0

while [[ -n "${array[$i]}" ]]
	do
		echo ${array[$i]}
		let " i += 1 "
	done

i=0
while [[ -n "${diff[$i]}" ]]
	do
		echo ${diff[$i]}
		let " i += 1 "
	done

i=0
y=0
while [[ -n "${array[$i]}" ]]
	do
		while [[ -n "${diff[$y]}" ]]
		do
			if [[ "${array[$i]}" = "${diff[$y]}" ]]
			then
				array[$i]="NULL"			## bug here before, research why and when to have spaces between token and when not
				break
			fi
			let " y += 1 "
		done
		let  " i += 1 "
		y=0	
	done

echo ${array[*]}
exit
		




## demain noter les construct [[ (( leur noms dans le man bash, et lire les concepts du man bash tout est la, les variables aussi
## why sometimes spaces are needed like if [[ etc etc ]] and for variables i=0 ii must not have spaces.
