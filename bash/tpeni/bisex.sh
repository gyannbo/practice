#!/bin/bash

anndep=$1
annariv=$2
nummois=1
tillten=0

[[ -z $1 ]] && { echo -e "usage : <année de départ> <année arrivée>"; } ## why {} and why ; inside

echo -e "année bissextile entre $anndep et $annariv : \n"
until [[ anndep -eq annariv ]]
	do
		if [[ -n $(cal 2 $anndep | grep 29) ]]
		then
			result="$result $anndep"
			if [[ $tillten -eq 10 ]]
			then
				result="$result\n"
				(( tillten = 0 ))
			else	
				(( tillten = tillten + 1 ))
			fi
		fi
	(( anndep = anndep + 1 ))
done
echo -e $result
exit
