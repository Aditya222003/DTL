#!/bin/bash

read -p "Enter number of subjects : " n

sum=0
for ((i=0; i<n; i++)); do
    read -p "Enter subject $((i+1)) marks : " element
    sum=$((sum + element))
done

avg=$(echo "scale=2; $sum / $n" | bc -l)

if (( $(echo "$avg > 70" | bc -l) )); then
    echo "Division 1"
elif (( $(echo "$avg >= 40" | bc -l) )); then
    echo "Division 2"
else
    echo "Fail"
fi
