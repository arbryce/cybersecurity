# 301 Ops Challenge 9

# Create if statements using these logical conditionals below. Each statement should print information to the screen depending on if the condition is met.
# Equals: a == b
# Not Equals: a != b
# Less than: a < b
# Greater than: a > b
# Create an if statement using a logical conditional of your choice and include elif keyword that executes when other conditions are not met.
# Create an if statement that includes both elif and else to execute when both if and elif are not met.

# Main

a = input("Please enter a number for a: ")
b = input("Please enter a number for b: ")

if (a == b) :
    print("A and b are equal.")

elif (a != b) :
    print("Does not equal.")
    if (a < b) :
        print("A is less than.")
    elif (a > b) :
        print("A is greater than.")

# End