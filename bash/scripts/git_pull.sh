#!/bin/bash

i=1
var=0

if [ "$(env | grep '^LANG')" = "LANG=fr_FR.UTF-8" ]			## j'avais un probleme parce que j'avais un commentaire sur la ligne préc, avec cette meme ligne commentée, pq ?
then
	export LANG=en_US
fi


while [ true ]
	do
		var=$(find ~ -name '.git' | sed 's/\/\.git//g' | awk "NR==$i{print \$1}")
		if [ -z $var ]
		then
			exit
		fi
		cd $var
		if [[ "$(git pull)" = "Already up to date." ]]
		then
			cd - 1>/dev/null
			echo " SUCCESS : $var "
			let " i += 1 "
		else
			echo "HAS PULLED : $var"
			cd -  1> /dev/null
			let " i += 1 "
		fi
	done
exit




## TODO
## pourquoi le scriptp git pull est beaucoup plus lent que le check clean ?

## LOGS
## lorsque je pull je dois m'identifier au proxy, je n'arrivais pas à faire accepter au prompt un input.
## La solution était de mettre un motdepasse dans l'identification au proxy, comme le proxy laisse tout
## passer on peut mettre du bullshit sur le mot de passe et on a pas le prompt :
## user:bullshitpassword@proxydomain:port dans le git config (plutot avec git config --global http.proxy <proxystring> 

## Lors du git pull, si il y a quelque chose a puller on aura de l'output sur le shell, meme si on redirige l'output du
## git pull
