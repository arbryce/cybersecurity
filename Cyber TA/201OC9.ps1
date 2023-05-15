# Script: Ops 201 Class 09 Ops Challenge Solution
# Author: Ashley Bryce
# Date of latest revision: 05/15/23

# Task 1: Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt
$Begin = Get-Date -Date '12/21/2022 00:00:00'
$End = Get-Date -Date '12/22/2022 23:59:59'
Get-EventLog -LogName System -After $Begin -Before $End > C:\Users\TJVog\Documents\last_24.txt

# Task 2: Output all “error” type events from the System event log to a file on your desktop named errors.txt
Get-EventLog -LogName System -EntryType Error > C:\Users\TJVog\Documents\error.txt

# Task 3: Print to the screen all events with ID of 16 from the System event log
Get-EventLog -LogName System -InstanceID 16 > C:\Users\TJVog\Documents\InstanceID.txt

# Task 4: Print to the screen the most recent 20 entries from the System event log
Get-EventLog -LogName System -Newest 20 > C:\Users\TJVog\Documents\New20.txt

# Task 5: Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the … and show the entire text)
$Events = Get-EventLog -LogName System -Newest 500
$Events | Group-Object -Property Source -NoElement | Sort-Object -Property Count -Descending > C:\Users\TJVog\Documents\500.txt