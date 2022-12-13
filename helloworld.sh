#!/bin/bash

# Script: Ops 201 Class 04 Ops Challenge Solution
# Author: Ashley Bryce
# Date of latest revision: 12/12/22
# Purpose: Print a string to the terminal


# Main
array=("dir1" "dir2" "dir3" "dir4")
mkdir ${array[*]} 
touch ${array[0]}/file.txt
touch ${array[1]}/file.txt
touch ${array[2]}/file.txt
touch ${array[3]}/file.txt
#End