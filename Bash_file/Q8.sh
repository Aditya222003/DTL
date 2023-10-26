#!/bin/bash

switchCase() {
    local marks=$1
    if ((marks >= 70)); then
        echo "Division 1"
    elif ((marks >= 40)); then
        echo "Division 2"
    else
        echo "Fail"
    fi
}

read -p "Enter number of students: " numberOfStudents

for ((student = 1; student <= numberOfStudents; student++)); do
    read -p "Enter the number of subjects for Student $student: " n
    marks=()

    for ((i = 0; i < n; i++)); do
        read -p "Enter subject $((i+1)) marks for Student $student: " element
        if ((element < 0)); then
            echo "Error: Subject marks cannot be negative."
            exit 1
        fi
        marks+=("$element")
    done

    sum=0
    for mark in "${marks[@]}"; do
        sum=$((sum + mark))
    done

    avg=$((sum / n))

    result=$(switchCase "$avg")
    echo "Student $student: $result"
done
