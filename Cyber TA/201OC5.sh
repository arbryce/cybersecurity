#!/bin/bash

y="x"

while [ $y == "x" ]
do 
    ps aux
    echo "Choose a PID."
    read pid            
    kill $pid
    break
done

