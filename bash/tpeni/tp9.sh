#!/bin/bash

cat /etc/issue.net | while read distro os version
do 
	echo "Votre système d'exploitation est $os"
	echo "la distribution utilisée est $distro en version $version"
done

ip -o -4 a | while read un nom lol ip_mask  fin
do 
	echo "le nom de la carte réseau est $nom et son ip et son masque sont $ip_mask"
done
