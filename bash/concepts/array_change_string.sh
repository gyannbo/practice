#!/bin/bash

array=(il etait une fois blanche neige)

array[1]="NULL"

echo ${array[*]}
