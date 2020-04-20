#!/bin/bash

# Write a shell script using ansible ad-hoc commands which:
# Accepts a file name. (hint: use read shell command to take input)
# Checks if file exists. ( -f option in condition )
# If file exists, copy the file to the remote host (node01 or all nodes)
# When done you should have the original file and one with a .bak at the end.

echo 'Enter a file name'
read myfile1

if [[ -f /home/adminuser/$myfile1 ]]
then
    echo 'File found'
    ansible node01 -m copy -a "src=/home/adminuser/$myfile1 dest=~/$myfile1.bak"
else 
    echo 'No file exists!'
fi
