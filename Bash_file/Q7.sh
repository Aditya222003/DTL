#!/bin/bash

read -p "Enter number 1 : " num1
read -p "Enter number 2 : " num2
read -p "Enter number 3 : " num3

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]; then
    echo "$num1 is largest"
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]; then
    echo "$num2 is largest"
elif [ $num3 -gt $num1 ] && [ $num3 -gt $num2 ]; then
    echo "$num3 is largest"
else
    echo "All numbers are equal to each other"
fi
