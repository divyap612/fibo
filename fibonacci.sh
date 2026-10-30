#!/bin/bash

n=$1

if ! [[ "$n" =~ ^[0-9]+$ ]] || [ "$n" -lt 1 ]; then
    echo "Please provide a positive number"
    exit 1
fi

a=0
b=1

echo "Fibonacci series for $n terms:"

for ((i=0; i<n; i++))
do
    echo -n "$a "
    temp=$((a+b))
    a=$b
    b=$temp
done

echo
