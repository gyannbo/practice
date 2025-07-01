#!/bin/bash
# FILLING AN ARRAY SCRIPT
#
# side effects precedence:
# echo ${array[1]=$(cat lol |awk "NR==1")}  ## syntaxe ok mais output null prob car ordre des opérations n'est pas celui espéré
# 
# array[1]=$(cat lol |awk "NR==1")   ## OBSOLETE AWK DOESNT NEED A CAT
# array[1]=$(awk "NR==1")   ## OBSOLETE AWK DOESNT NEED A CAT
# echo ${array[1]}				## içi output est bon

echo $'il\n etait\n une\n fois\n blanche\n neige\n et\n les\n septs\n nains\n' > temp    ## why tf is $' ' required here   : https://stackoverflow.com/questions/20536112/how-to-insert-a-new-line-in-linux-shell-script
array[0]="allo"

i=0
while [ -n "${array[$i]}" ]				## why do i need the quotes here  : https://askubuntu.com/questions/1056950/bash-empty-string-comparison-behavior
	do
		let " i += 1 "
		array[$i]=$(awk "NR==$i" temp)
	done

i=1
while [ -n "${array[$i]}" ]
	do
		echo ${array[$i]}
		let " i += 1 "
	done
rm temp 
exit

