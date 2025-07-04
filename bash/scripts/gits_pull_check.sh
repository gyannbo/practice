#!/bin/bash

                                
#  is LANG right ?             #
                                

if [ "$(env | grep '^LANG')" = "LANG=fr_FR.UTF-8" ]    ## change to match what is not en-US
then
	export LANG=en_US
fi
                                

#  remplir ignoregits tab      #
                                

ignoregits[0]="begin"
i=0

while [ -n "${ignoregits[$i]}" ]				## why tf do i need the quotes here  : https://askubuntu.com/questions/1056950/bash-empty-string-comparison-behavior
	do
		let " i += 1 "
		ignoregits[$i]=$(awk "NR==$i" /home/gbonis/scripts/data/ignoregits )
	done

                                
#  remplir on system git tab   #
                                

sysgits[0]="begin"
i=0

find ~ -name '.git' > temp
sed -i 's/\/\.git//g' temp

while [ -n "${sysgits[$i]}" ]				## why tf do i need the quotes here  : https://askubuntu.com/questions/1056950/bash-empty-string-comparison-behavior
	do
		let " i += 1 "
		sysgits[$i]=$(awk "NR==$i" temp)
	done


# replace gits to ignore in sysgits by NULL #

i=1
y=1

while [[ -n "${sysgits[$i]}" ]]
	do
		while [[ -n "${ignoregits[$y]}" ]]
		do
			if [[ "${sysgits[$i]}" = "${ignoregits[$y]}" ]]
			then
				sysgits[$i]="NULL"
				break
			fi
			let " y += 1 "
		done
		let  " i += 1 "
		y=0	
	done

i=1
# while [[ -n "${sysgits[$i]}" ]]
#	do
#		echo ${sysgits[$i]}
#		let " i += 1 "
#	done
#
#

i=1
while [ true ]
	do
		if [ -z ${sysgits[$i]} ]
		then
			rm temp
			exit
		fi
		if [ ${sysgits[$i]} = "NULL" ]
		then
			let " i += 1 "
			continue
		fi
		cd ${sysgits[$i]}
		if [[ "$(git pull)" = "Already up to date." ]]
		then
			cd - 1>/dev/null
			echo " SUCCESS : ${sysgits[$i]} "
			let " i += 1 "
		else
			echo "HAS PULLED : ${sysgits[$i]} "
			cd -  1> /dev/null
			let " i += 1 "
		fi
	done
rm temp
exit

## TODO
## Une maniere performante de le faire serait prob de faire 2 tableaux pour comparer, et mettre les résulats dans un troisième
## -faire ignorer les repos gits qui ne m'interresse pas, avec un fichier un peu comme gitignore
## -err check, if data/ignoregits exist, and so on
## -language test if diff plutot que if eq to francais

## faire un script aussi pour pull quand j'arrive au début de la journée. Voir meme un script qui prends les deux possibilitées.





## LOG :
## if origin/main instead of origin/master, failed the tests
## system can be in another language and can fail the tests
## some repo have a .git but fail a git status. Doesnt matter, will put them in the ignoregits.
