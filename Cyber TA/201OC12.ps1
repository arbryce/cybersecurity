#!/bin/bash

# Script: Ops 201 Class 12 Ops Challenge Solution
# Author: Ashley Bryce
# Date of latest revision: 05/15/23
# Purpose: Print a string to the terminal

# Main

function IP {
    ipconfig /all | Out-File -FilePath $file
}
$file= "C:\Users\cyber\OneDrive\Desktop\network_report.txt"
IP
Select-String -Path $file -Pattern IPv4
Remove-Item -Path $file

# End