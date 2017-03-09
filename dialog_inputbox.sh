#!/bin/bash 

dialog --inputbox "Enter your age:" 10 20 2>age.txt
echo $?
cat age.txt
