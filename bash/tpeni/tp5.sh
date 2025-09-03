#!/bin/bash

vert='\033[5;32m'
rouge='\033[3;31m'
nc='\033[0m'
#export user=$1

if [[ -z $user ]]
	then
		read -p "Veuillez entrer un utilisateur: " user
		echo $user
		if [[ -z $user ]]
			then
				echo 'Erreur de saisie.             Enculé'
				exit 2
			fi
	fi

id $user > /dev/null 2>&1
if [[ $? -eq 0 ]]
	then
		echo -e "$vert l'utilisateur existe $nc"
	else
		echo -e "$rouge l'utilisateur n'existe pas"
	fi

