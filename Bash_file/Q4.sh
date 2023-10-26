#!/bin/bash

read -p "Enter radius of the circle : " radius

function calculate_circumference() {
    local r=$1
    echo "scale=2; 2 * 3.14159 * $r" | bc -l
}

function calculate_area() {
    local r=$1
    echo "scale=2; 3.14159 * $r * $r" | bc -l
}

circumference=$(calculate_circumference "$radius")
area=$(calculate_area "$radius")

echo "Circumference of circle : $circumference"
echo "Area of circle : $area"
