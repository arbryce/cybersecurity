#!/bin/bash

# Script: Ops 201 Class 05 Ops Challenge Solution
# Author: Ashley Bryce
# Date of latest revision: 
# Purpose: Print a string to the terminal

# Main

y="x"

while [ $y == "x" ]
do 
    ps aux
    echo "Choose a PID."
    read pid            
    kill $pid
    break
done

# End