#!/bin/bash

soma(){
  sum=$(($1+$2))
  echo $sum
}

read -p "Digite um Numero: " a
read -p "Digite outro Numero: " b
r=$(soma $a $b)
echo "A soma dos numero $a e $b = $r"
