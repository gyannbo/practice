#!/bin/bash

if [ -z $1 ]
then
	echo 'usage : ./script $(pwd)  ## in a directory containing all your git repositories'
	exit
fi

i=1
success=1
while [ true ]		# necessite le true pour que la boucle tourne, pas comme en c ou on peut rien mettre
	dirs[$i]=$(ls "$1" | sed -e 's/\(.*\)/\1/' | sed -n "$i"p)
		if [[ -z ${dirs[$i]} ]]		# -z operator renvoie true si chaine est vide (zero length) man bash
		then
			if [ $success -eq $i ]
				then
					echo "SUCCESS: every repo clean"
				fi
			exit
		fi
		do 
			cd ${dirs[$i]}
			if [[ "$(git status | sed -n 4p)" = "nothing to commit, working tree clean"  &&  "$(git status | sed -n 2p)" = "Your branch is up to date with 'origin/master'." ]]
			then
				cd .. 
				let " i += 1 "
			else
				let " success += 1 "
				echo " ${dirs[$i]} is not clean"
				cd .. 
				let " i += 1 "
			fi
		done
exit


## créer un checker pour tous les gits qui sont dans le $HOME
## utiliser la commande find maxdepth 1 -name '.git'  pour checker chaque directory depuis le home en bouclant

## find ~ -name '.git' | grep practice | sed 's/\/\.git//'  ## on peut utiliser ça sur chaque match de find pour cd dedans et faire un git status
## ensuite l'idée serait plutot de noter tous les git qui sont a shutdown et d'avoir que mes gits, et de pouvoir lancer le script de mon home
## pour pouvoir etre sur de tout toucher

## d'abord build un getter de toutes les paths>


## TODOa :
## NOTER DANS LES FICHIERS HELP TOUT CE QUE J'AI UTILIsé içi comme concepts, sed, boucle etc.. et les trucs sur lesquels j'ai galéré
