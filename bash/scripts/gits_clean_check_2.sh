#!/bin/bash

i=1
var=0

if [ "$(env | grep '^LANG')" = "LANG=fr_FR.UTF-8" ]			## j'avais un probleme parce que j'avais un commentaire avant, avec cette meme ligne commentée
then
	export LANG=en_US
fi

while [ true ]
	do
		# var=$(find ~ -name '.git' | sed 's/\/\.git//g' | sed -n "$i"p)
		var=$(find ~ -name '.git' | sed 's/\/\.git//g' | awk "NR==$i{print \$1}")
		if [ -z $var ]
		then
			exit
		fi
		cd $var
		if [[ "$(git status | sed -n 4p)" = "nothing to commit, working tree clean"  &&  "$(git status | sed -n 2p)" = "Your branch is up to date with 'origin/master'."  || "$(git status | sed -n 2p)" = "Your branch is up to date with 'origin/main'." ]]  ## fail if main and note master  ## aussi pourquoi il faut tj des spaces, et des doubles [[
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
exit

## TODO
## attention a la maison j'ai des fatal not a git repo
## fail if french

## faire un script aussi pour pull quand j'arrive au début de la journée. Voir meme un script qui prends les deux possibilitées.
