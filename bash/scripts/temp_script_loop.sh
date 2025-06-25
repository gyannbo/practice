#!/bin/bash

i=1
var=0
while [ true ]
	do
		var=$(find ~ -name '.git' | sed 's/\/\.git//g' | sed -n "$i"p)
		if [ -z $var ]
		then
			exit
		fi
		cd $var
		if [[ "$(git status | sed -n 4p)" = "nothing to commit, working tree clean"  &&  "$(git status | sed -n 2p)" = "Your branch is up to date with 'origin/master'." ]]
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


## attention a la maison j'ai des fatal not a git repo

## faire un script aussi pour pull quand j'arrive au début de la journée. 
