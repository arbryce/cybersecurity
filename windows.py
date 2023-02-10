# Script: Ops 301 Class 06 Ops Challenge Solution
# Author: Ashley Bryce
# Date of latest revision: 02/09/23
# Create a Python script that executes a few bash commands successfully

import os

define_user = "whoami"
define_ip = "ipconfig"
define_hardware = "systeminfo"

print(os.system(define_user))
print(os.system(define_ip))
print(os.system(define_hardware))