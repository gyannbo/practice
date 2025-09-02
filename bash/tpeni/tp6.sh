#!/bin/bash

echo -en "Que voulez vous faire: \n \
	Information sur le matériel (matos)\n \
	Information sur l'espace (espace)\n \
	Information sur les paquets (paquet)\n \
	Information sur les répertoires (rep)\n \
	Quitter (quit)"	

read -p " : " choix trash

case ${choix,,} in
	matos|m|M)
		read -p "CPU ou PCI ?: " matos trash
		if [[ ${matos,,} == "cpu" ]]
			then
				lscpu	
		elif [[ ${matos,,} == "pci" ]]
			then
				lspci	
		fi
	;;

	espace|e|E)
		read -p "Mo ou inode ?: " info trash
		if [[ ${info,,} == "mo" ]]
			then
				df -h	
		elif [[ ${info,,} == "inode" ]]
			then
				df -i
		fi
	;;

	paquet|p|P)
		dpkg --get-selections
	;;

	rep|r|R)
		du -hs /*
	;;

	quit|q|Q)
	;;

	*)
		echo "syntac error"
		exit 2
	;;
esac	
	
sleep 2
echo fin
	
	
