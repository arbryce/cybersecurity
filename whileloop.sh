#!/bin/bash

#while loop
counter=6
while [ $counter -le 20 ]
do
echo $counter
((counter++))
done

echo all done