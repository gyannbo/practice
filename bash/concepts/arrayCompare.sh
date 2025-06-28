#!/bin/bash

array=(il etait une fois blanche neige et les septs nains)
diff=(who the f is blanche neige)


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
exit



## demain noter les construct [[ (( leur noms dans le man bash, et lire les concepts du man bash tout est la, les variables aussi
## 
