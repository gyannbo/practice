#!/bin/bash

rep=$1

if [[ -z $rep ]] ;
then
	echo "usage: ./tp7_2019.sh <nom de dossier>"
	exit 2
fi

listext=$(cat /home/gobnis/practice/bash/tpeni/ext.txt)

count=0
if [[ ! -d $rep ]]
then
	echo "$rep n'est pas un dossier"
	exit
fi

totalfic=$(ls $rep | wc -w)
echo "Nombre total de fichier dans $rep : $totalfic"

for ext in $listext
do
	echo "----------------------------"
	echo "	fichiers $ext		"
	echo
	echo " nombre total : $(ls $rep/*$ext | wc -w)"
	echo " $((100 * $(ls $rep/*$ext | wc -w) / $totalfic)) % "
done
