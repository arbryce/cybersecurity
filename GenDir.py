#!/usr/bin/env python3
# Script: Ops 301 Class 07 Ops Challenge Solution
# Author: Ashley Bryce
# Date of latest revision: 02/13/23
# Create a Python script that generates all directories, sub-directories and files for a user-provided directory path.

# Main

import os

r = "/Users/TJVog/OneDrive/Desktop/Cybersecurity/cybersecurity/dir1"

for (root, dirs, files) in os.walk(r):
    ### Add a print command here to print ==root==
    print(root)
    ### Add a print command here to print ==dirs==
    print(dirs)
    ### Add a print command here to print ==files==
    print(files)

# End