#!/bin/bash

#test if statement with and OR with two tests
#test must be successful if either var2 or var3 are of the exepcted values

var1=1
var2=3 #wrong on purpose
var3=3
if [[ var1 -eq 1 ]] && { [[ var2 -eq 2 ||  var3 -eq 3 ]] }   # pourquoi besoin de { ici ?
#if [[ var1 -eq 1 &&  var2 -eq 2 ]] || [[ var1 -eq 1 &&  var3 -eq 3 ]]    # possible aussi
then
	echo success
	exit
fi
echo fail
exit
