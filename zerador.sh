#!/bin/bash

if [ $# -eq 0 ]
then  
    echo "Mode usar: zerador.sh NUMER0_POSITIVO"
    exit 0
fi
numero=$1
while [ $numero -gt 0 ]
do
    echo -n "$numero " 
    numero=$(($numero-1))
done
