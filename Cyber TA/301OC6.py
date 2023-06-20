# Script: Ops 301 Class 06 Ops Challenge Solution
# Author: Ashley Bryce
# Date of latest revision: 02/09/23
# Create a Python script that executes a few bash commands successfully (currently on windows machine, script is written for windows)

# Powershell/Python:

import os

define_user = "whoami"
define_ip = "ipconfig"
define_hardware = "systeminfo"

print(os.system(define_user))
print(os.system(define_ip))
print(os.system(define_hardware))



# Bash/Python script:

import os

whoami = os.popen('whoami').read()
ip = os.popen('ip a').read()
lshw = os.popen('lshw -short').read()

print("Output of 'whoami' command:")
print(whoami)

print("Output of 'ip a' command:")
print(ip)

print("Output of 'lshw -short' command:")
print(lshw)