#!/bin/bash

if [ $# -ne 2 ]
then
  exit 0
fi

primeiro=$1
segundo=$2
echo $segundo | grep -qs $primeiro

if [ $? -eq 0 ]
then 
  echo "$primeiro está contida em $segundo"
fi

