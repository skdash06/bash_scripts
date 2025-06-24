#!/bin/bash

echo "Enter a no."
read n

a=0

if [ "$n" -le 1 ]; then
    a=1
fi

for (( i=2; i<n; i++ ))
do
    if (( n % i == 0 )); then
	a=1
	break
    fi
done

if [ "$a" -eq 1 ];then
    echo "$n is not a prime number."
else
    echo "$n is a prime number."
fi
