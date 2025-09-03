#!/bin/bash

tentative=1
name=

while [[ -z $name ]] 
	do
		read -p "Veuillez saisir un nom d'utilisateur : " name trash
		if [[ -z $name ]]
		then	
			(( tentative += 1 ))
		fi
done
id $name > /dev/null 2>&1
if [[ $? -eq 0 ]]
	then
		echo -e "\nInformations sur l'utilisateur :"
		id $name
		echo
		echo "taille du répertoire utilisateur de $name :" 
		du -hs /home/$name
	else
		echo "nombre de tentative : $tentative"
	fi
