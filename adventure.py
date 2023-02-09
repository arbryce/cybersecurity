# Setup
import random
yes_no = ["yes", "no"]
directions = ["left", "right", "forward", "backward"]
 
# Introduction
name = input("What is your name, adventurer?\n")
print("Greetings, " + name + ". Prepare yourself for a magical journey!")
print("You find yourself on the edge of a dark forest.")
print("Can you find your way through?\n")
 
# Start of game
response = ""
while response not in yes_no:
    response = input("Would you like to step into the forest?\nyes/no\n")
    if response == "yes":
        print("Ravens croak in the distance as you enter the forest.\n")
    elif response == "no":
        print("Come back when you've got some chest hair. Goodbye, " + name + ".")
        quit()
    else: 
        print("Come again?\n")
 
# Next part of game
response = ""
while True:
    print("To your left, a bear.")
    print("To your right, more forest.")
    print("There is a rock wall directly in front of you.")
    print("Behind you is the forest exit.\n")
    response = input("What direction do you move?\nleft/right/forward/backward\n")
    if response == "left":
        print("You encounter a witch in a house made of candy what do you do?")
        fight = input("Fight the witch? y/n\n")
        if  fight == "y":
            print("10 sided dice rolled to see if you beat witch")
            number = random.randint(1, 10)
            if number >= 5:
                print(f"you have defeated the witch with a roll of {number} and escaped the forest with a friendly cat named Binx!")
                response = ""
            else: print("The witch has defeated you and throws you into the oven!") 
            quit()
        else: print("You ran away like a coward.")
        
    elif response == "right":
        print("You head deeper into the forest.  You find a castle in front of you.\n")
        castle = input("You enter the castle do you go left or right?\n")
        if castle == "left":
            print("You fall through a trap door and find a troll. You find a bow and arrows next to you.")
            troll = input("\nDo you shoot the troll or try to run\n")
            if troll == "shoot":
                arrow = random.randint(1, 10)
                print("You try and shoot the troll with 70 percent accuracy")
                if arrow <= 7:
                    print("You shoot the troll and escape the castle")
                else: print("You try and shoot the troll and miss and the troll hulksmashes you.")
            else: print("You try and run from the troll but he catches you and throws you in the dungeon.")
        else:  print("You head to the right and find a staircase and start to ascend you get to the top and find the princess.\n")  
        princess = input("Do you try and save her?y/n\n")
        if princess == "y":
                print("You save the princess and escape the castle")
        else: print("The princess shoots you for disturbing her slumber.")
        quit()
    elif response == "forward":
        wall = input("You find a wall you can scale do you scale it?.y/n\n")
        if wall == "y":
            print("You scale the wall and find a dragon")
            dragon = input("Do you charm the dragon or run? c/r\n")
            if dragon == "c":
                print("Your ride the dragon to safety")
                quit()   
            else: print("The dragon catches you and eats you")
            quit()
        else: print("You turn back and get lost and find a creature guarding a ring?")
        print("The creatures call the ring my prescious")
        ring = input("Do you take the ring from him?y/n\n")
        if ring == "y":
            print("You take a chance to steal the ring.")
            rings = random.randint(1, 10)
            if rings >= 5:
                print(f"Your rolled a {rings}")
                print("You take your chance to steal the ring and grab it and harness its power to escape")
            else: print(f"You rolled a {rings}.  The creature catches you and throw you into a pit to never been seen again")
        else: print("The creatures is greatful you did not try and steal his prescious and leads you to the exit") 
        
        response = "" 
    elif response == "backward":
            print("A magical door to the forest slams behind you and now you are stuck.")
            cave = input("Do you got to the cave or the tower?\n")
            if cave == "cave":
                print("You find tony stark stuck in cave building a suit and help him escape and you escape also")
            else: print("You find the true boogeyman John Wick and he kills all the creatures of the forest and you become ruler of the forest as he leaves to avenge the death of his dog")
    else:
        print("I didn't understand that.\n")
    play_again = input("Play again? (y/n): ")
    if play_again.lower() != "y":
        break