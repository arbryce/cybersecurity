#!/bin/bash

# Script: Ops 201 Class 10 Ops Challenge Solution
# Author: Ashley Bryce
# Date of latest revision: 05/10/23
# Purpose: Print a string to the terminal

Task 1: 
Get-Process | Sort-Object CPU -Descending

Task 2:
Get-Process | Sort-Object Id -Descending

Task 3:
Get-Process | Sort-Object WS -Descending | Select-Object -First 5

Task 4:
Start-Process -Filepath "C:\Program Files\Internet Explorer\iexplore.exe" https://owasp.org/www-project-top-ten/

Task 5: 
for ($i = 0; $i -lt 10; $i++) {Start-Process "C:\Program Files\Internet Explorer\iexplore.exe" https://owasp.org/www-project-top-ten/}

Task 6:
get-process iexplore | stop-process

Task 7:
Stop-Process -ID 1464 -Force