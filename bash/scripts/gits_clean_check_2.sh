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


#  create third tab            #
# BE CAREFUL THE ARRAYS HAVE ACTUAL DATA FROM INDEX 1 #

result[0]="begin"
x=1
y=1
z=1

while [ -n "${sysgits[$x]}" ]
	do
		if [ :w
	done		

		## en lisant le man bash sur les arrays, j'ai vu qu'on peut suppr les elements d'un array avec unset array[n] ou meme tout l'array avec unset array. je peux probablemnet
		## juste enlever les elements dans larrat gits sys et avoir un flag a la fin qui me permet, non meme mieux je set les element sur une string qui ne peux pas advenir, par
		## exemple un nom qui commence pas par un / car de toute maniere la commande find ne renverrais jamais un non comme ca et je skip tout ces flags lors du traitement, ce serait
		## prob plus performant





		## TODO  loop to compare the two arrays to make a third to use for the git check or pull. This is for performance, instead of doing each time a find and a sed, or rearranging arrays if only have two
		


exit



i=1
var=0
while [ true ]
	do
		var=$(find ~ -name '.git' | sed 's/\/\.git//g' | awk "NR==$i{print \$1}")   ## améliorer les perf içi, éviter de call find a chaque fois ## faire find et sed une fois et mettre ca dans un tab ou fic et awk a cahque fois dessus
		if [ -z $var ]
		then
			rm temp
			exit
		fi
		cd $var
		if [[ "$(git status | sed -n 4p)" = "nothing to commit, working tree clean"  && \
			 "$(git status | sed -n 2p)" = "Your branch is up to date with 'origin/master'."  ||\
			 "$(git status | sed -n 2p)" = "Your branch is up to date with 'origin/main'." ]]  ## aussi pourquoi il faut tj des spaces, et des doubles [[ 
		then
			cd - 1>/dev/null
			echo " SUCCESS : $var "
			let " i += 1 "
		else
			echo " FAIL : $var "
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
