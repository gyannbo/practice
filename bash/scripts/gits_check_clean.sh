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
			if [ $(git status | sed -n 4p) -eq "nothing to commit, working tree clean" ]
			then
				cd .. 
				let " i += 1 "
				let " success += 1 "
			else
				echo " ${dirs[$i]} is not clean"
				cd .. 
				let " i += 1 "
			fi
		done
exit


## créer un checker pour tous les gits qui sont dans le $HOME


## faudrait meilleur gestion d'erreur, si il ya un dir avec des gits dedans on a un message d'erreur "fatal not a git etc"
