# Using file handling commands, create a Python script that creates a new .txt file, appends three lines, 
# prints to the screen the first line, then deletes the .txt file.

# Main

f = open("new.txt", "w")
l1 = "Hello \n" 
l2 = "Howdy \n" 
l3 = "Hi \n"

f.writelines([l1, l2, l3])

f = open("new.txt", "r")
print(f.readline())

import os
os.remove("new.txt")

# End