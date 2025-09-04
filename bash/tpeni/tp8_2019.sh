#!/bin/bash


## man 5 passwd

cat /etc/passwd | sed -e 's/ /_/g' -e's/::/:null:/g' -e 's/:/\ /g' | while read user lol uid gid  fullname  userrepo usershell 
do
	if [[ $uid -gt 999 ]] && [[ $uid -lt 2000 ]] 
		then
			echo "--------------------"
			echo "Identifiant : $user"
			echo "UID : $uid"
			echo "GID : $gid"
			echo "User : $(echo $fullname | sed -e 's/_/ /g')"
			echo "User directory : $userrepo"
			echo "User login shell : $usershell"
		fi
done
