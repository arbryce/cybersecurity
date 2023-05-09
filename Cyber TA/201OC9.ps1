# Script: Ops 201 Class 09 Ops Challenge Solution
# Author: Ashley Bryce
# Date of latest revision: 12/22/23
# Purpose: Print a string to the terminal

# Task 1
$Begin = Get-Date -Date '12/21/2022 00:00:00'
$End = Get-Date -Date '12/22/2022 23:59:59'
Get-EventLog -LogName System -EntryType Error -After $Begin -Before $End > C:\Users\TJVog\Documents\last_24.txt

# Task 2
Get-EventLog -LogName System -EntryType Error > C:\Users\TJVog\Documents\error.txt

# Task 3
Get-EventLog -LogName System -InstanceID 16 > C:\Users\TJVog\Documents\InstanceID.txt

# Task 4
Get-EventLog -LogName System -Newest 20 > C:\Users\TJVog\Documents\New20.txt

# Task 5
$Events = Get-EventLog -LogName System -Newest 500
$Events | Group-Object -Property Source -NoElement | Sort-Object -Property Count -Descending > C:\Users\TJVog\Documents\500.txt