#!/bin/bash


source /home/gobnis/practice/bash/tpeni/funcfile.sh

while true
do
	echo "------------------"
	echo
	echo "Voulez vous :"
	echo "	Sauvegarder les fichiers .sh dans /home/gobnis/save ? (S)"
	echo "	Supprimer les .save de ce dossier ? (D)"
	echo "	lister les fichiers disposant d'une sauvegarde ? (L)"
	echo "	Quitter (Q)"
	read input end
	
	case $input in
		S)
			saveInDir
			;;
		D)
			deleteSaveInDir
			;;
		L)
			listSaveInDir
			;;
		Q)
			exit
			;;
	esac	
done
