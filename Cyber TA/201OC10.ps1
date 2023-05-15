# Script: Ops 201 Class 10 Ops Challenge Solution
# Author: Ashley Bryce
# Date of latest revision: 05/15/23

# Task 1: All active processes ordered by highest CPU time consumption at the top
Get-Process | Sort-Object CPU -Descending

# Task 2: All active processes ordered by highest Process Identification Number at the top
Get-Process | Sort-Object Id -Descending

# Task 3: Top five active processes ordered by highest Working Set (WS(K)) at the top
Get-Process | Sort-Object WS -Descending | Select-Object -First 5

# Task 4: Start a browser process and have it open https://owasp.org/www-project-top-ten/
Start-Process -Filepath "C:\Program Files\Internet Explorer\iexplore.exe" https://owasp.org/www-project-top-ten/

# Task 5: Start the process Notepad ten times using a for loop
for ($i = 0; $i -lt 10; $i++) {Start-Process "C:\Program Files\Internet Explorer\iexplore.exe" https://owasp.org/www-project-top-ten/}

# Task 6: Close all instances of the Notepad
get-process iexplore | stop-process

# Task 7: Kill a process by its Process Identification Number
Stop-Process -ID 1464 -Force