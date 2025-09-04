#!/bin/bash

rep=$1

if [[ -z $rep ]] ;
then
	exit 2
fi

vert='\033[5;32m'
nc='\033[0m'


# possible aussi
# if [[ ! -d $rep]]
# pratique pour l'inversion du -d


ls $rep > /dev/null 2>&1
if [[ $? -ne  0 ]]
then
	exit 3
fi

list=$(ls $rep)
for content in $list
do
	if [[ $content == *.conf ]]
	then
		fichier=$content
		echo -e "$vert$fichier$nc"
	fi
done

