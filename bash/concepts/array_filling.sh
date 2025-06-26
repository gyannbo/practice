#!/bin/bash
######################################################
#       FILL AN ARRAY                                #
######################################################

## seems like bash arrays do not need memory allocation, you can just declare pretty much whatever you want :

######################################################
#       side effects precedence                      #
######################################################

## echo ${array[1]=$(cat lol |awk "NR==1")}  ## syntaxe mais output null prob car ordre des opérations n'est pas celui espéré
## 
## array[1]=$(cat lol |awk "NR==1")
## echo ${array[1]}				## içi output est bon


echo $'il\n etait\n une\n fois\n blanche\n neige\n et\n les\n sept\n toxicos\n' > temp    ## why tf is $' ' required here   : https://stackoverflow.com/questions/20536112/how-to-insert-a-new-line-in-linux-shell-script
array[0]="allo"
i=0

while [ -n "${array[$i]}" ]				## why tf do i need the quotes here  : https://askubuntu.com/questions/1056950/bash-empty-string-comparison-behavior
	do
		let " i += 1 "
		array[$i]=$(cat temp | awk "NR==$i")
	done

i=1
while [ -n "${array[$i]}" ]
	do
		echo ${array[$i]}
		let " i += 1 "
	done
rm temp 
exit

