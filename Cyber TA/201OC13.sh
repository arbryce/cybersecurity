#!/bin/bash

# Script: Ops 201 Class 13 Ops Challenge Solution
# Author: Ashley Bryce
# Date of latest revision: 05/15/23

# Create a script that asks a user to type a domain, then displays information about the typed domain
echo "Please enter a domain name:"

read a

domaininfo(){

whois $a
dig $a
host $a
nslookup $a
}

domaininfo > domain.txt