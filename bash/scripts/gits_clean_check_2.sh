#!/bin/bash

i=1
var=0

if [ "$(env | grep '^LANG')" = "LANG=fr_FR.UTF-8" ]
then
	export LANG=en_US
fi
################################
#  remplir ignore tab		   #
################################

while [ true ]
	do
		var=$(find ~ -name '.git' | sed 's/\/\.git//g' | awk "NR==$i{print \$1}")   ## améliorer les perf içi, éviter de call find a chaque fois
		if [ -z $var ]
		then
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
exit

## TODO
## -attention a la maison j'ai des fatal not a git repo (avec la commande find qui ne devrait trouver que des .git
## -> je ne sais pas pourquoi mais ça fail alors qu'il y a des .git dedans, peu importe je vais les mettre dans le ignore
## -faire ignorer les repos gits qui ne m'interresse pas, avec un fichier un peu comme gitignore

## faire un script aussi pour pull quand j'arrive au début de la journée. Voir meme un script qui prends les deux possibilitées.





## LOG :
## if origin/main instead of origin/master, failed the tests
## system can be in another language and can fail the tests
