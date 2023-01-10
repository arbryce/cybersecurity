#!/bin/bash

# Script: Ops 201 Class 13 Ops Challenge Solution
# Author: Ashley Bryce
# Date of latest revision: 01/09/23
# Purpose: Print a string to the terminal. 

a="google.com"

domaininfo(){

whois $a
dig $a
host $a
nslookup $a
}

domaininfo > domain.txt