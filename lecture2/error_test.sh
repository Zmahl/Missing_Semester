#!/bin/bash/env bash

echo "Running program $0 with pid $$"

rm -f ~/stdout.txt
rm -f ~/stderror.txt

touch ~/stdout.txt
touch ~/stderror.txt

count=0

until [[ "$?" -ne 0 ]];
do
  count=$((count+1))
  ./error.sh >> out.txt
done

echo "Error after $count runs"
cat out.txt
   
