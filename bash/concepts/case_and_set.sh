#!/bin/bash

if [[ $# -ne 2 ]]
	then
		echo "usage: ./tp3.sh <Prenom> <Nom>"
		exit  1 
	fi

var1=$1
var2=$2
echo -n "Veuillez rentrer votre age: "
read age fin

##	pour un case statement, on utilise le | pour chainer les cas, et seulement ) pour fermer (pas besoin d'ouvrir la parenthèse.
##	ensuite après le cas, on peut mettre les commandes après. Chaque clause va être terminée par ;; ou ;& u ;;&
case $age in	# check if age is not a number
	*[0-9]*) ;;
	*)	echo "not a number" ; exit;  ;;
esac
	
echo "Bonjour ${var1} ${var2}, tu as ${age} ans"

#set $1 allobonjour
#set $2 pourquoisalutportsalut
#echo $1
#echo $2
#
#1=allo		## ne fonctionnera pas car var reservées, il faut set
#2=bonjour	##
#echo $1
#echo $2


##case $var in
##   ("")       echo "empty";;
##   (*[!a-z]*) echo "contains a non-alphabetic";;
##   (*)        echo "just alphabetics";;
##esac
