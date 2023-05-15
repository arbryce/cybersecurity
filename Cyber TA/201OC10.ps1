# Script: Ops 201 Class 10 Ops Challenge Solution
# Author: Ashley Bryce
# Date of latest revision: 05/15/23

# All active processes ordered by highest CPU time consumption at the top
Task 1: 
Get-Process | Sort-Object CPU -Descending

# All active processes ordered by highest Process Identification Number at the top
Task 2:
Get-Process | Sort-Object Id -Descending

# Top five active processes ordered by highest Working Set (WS(K)) at the top
Task 3:
Get-Process | Sort-Object WS -Descending | Select-Object -First 5

# Start a browser process and have it open https://owasp.org/www-project-top-ten/
Task 4:
Start-Process -Filepath "C:\Program Files\Internet Explorer\iexplore.exe" https://owasp.org/www-project-top-ten/

# Start the process Notepad ten times using a for loop
Task 5: 
for ($i = 0; $i -lt 10; $i++) {Start-Process "C:\Program Files\Internet Explorer\iexplore.exe" https://owasp.org/www-project-top-ten/}

# Close all instances of the Notepad
Task 6:
get-process iexplore | stop-process

# Kill a process by its Process Identification Number
Task 7:
Stop-Process -ID 1464 -Force