#!/bin/bash

if [[ $# -eq 0 ]]
	then
			echo "script need at least two args"
			exit
	fi
echo "name of script : $0"
echo "first arg : $1"
echo "all args : $@"
echo "number of args : $#"
