#!/bin/bash

echo help | bluetoothctl
# does one help command in bluetoothctl

echo help help | bluetoothctl
#does one 'help help' commands in bluetoothctl, which fail

(echo help; echo help) | bluetoothctl
#does two 'help' commands in bluetoothctl, works

echo help; echo help | bluetoothctl
#only do one help in bluetoothctl, and before this a help on the terminal

echo help | bluetoothctl; echo help | bluetoothctl
#seems like same as (echo help; echo help0) | bluetoothctl

bluetoothctl << test  <appuyer sur entree>
help
lol
#fonctionne, a voir si je peux mettre ca dans un script (test: oui)

(echo pass; echo pass) | passwd test
#fonctionne, prouve que les deux inputs sont bien execute dqns le meme subshell
