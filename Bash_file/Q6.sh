#!/bin/bash

# Function to perform arithmetic operations
function switch_case() {
    local case="$1"
    local num1="$2"
    local num2="$3"

    case "$case" in
        '+')
            echo "$((num1 + num2))"
            ;;
        '-')
            echo "$((num1 - num2))"
            ;;
        '/')
            if [ "$num2" -eq 0 ]; then
                echo "Error: Division by zero"
            else
                echo "$(bc -l <<< "scale=2; $num1 / $num2")"
            fi
            ;;
        '*')
            echo "$((num1 * num2))"
            ;;
        '%')
            echo "$((num1 % num2))"
            ;;
        *)
            echo "Invalid operator: $case"
            ;;
    esac
}

read -p "Enter number 1 : " num1
read -p "Enter number 2 : " num2
read -p "Enter operator (+, -, *, /, %) : " operator

result=$(switch_case "$operator" "$num1" "$num2")
echo "Answer : $result"
