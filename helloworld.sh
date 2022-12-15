#!/bin/bash

# Script: Ops 201 Class 05 Ops Challenge Solution
# Author: Ashley Bryce
# Date of latest revision: 12/13/22
# Purpose: Print a string to the terminal


# Main

for d in doom
do

ps aux

echo "Which PID do you want to kill?"

read PID

kill $PID
done

echo "All done."

#End