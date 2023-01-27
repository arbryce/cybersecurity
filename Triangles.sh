#!/bin/bash
# Script: Identify whether the triangle is scalene, isosceles, or equilateral.
# Author: Ashley Bryce
# Date of latest revision: 01/26/23

#Main

a=y

while [ $a = y ]
do
echo "Please enter a value for side one."
read X

echo "Please enter a value for side two."
read Y

echo "Please enter a value for side three."
read Z

if (("$X"=="$Y")) && (("$Y"=="$Z")) && (("$X"=="$Z"));then
    echo "EQUILATERAL"
  elif  (("$X"=="$Y")) || (("$Y"=="$Z")) || (("$X"=="$Z"));then
    echo "ISOSCELES"
  else
    echo "SCALENE"
fi

echo "Do you want to try again, y or n?"
read a
done

#End