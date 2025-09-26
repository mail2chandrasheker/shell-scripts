#!/bin/bash
#1  -p prompt message
read -p "enter your name" name
echo "hello ,$name"

#2 -s silent mode or password hidden
read -s -p "enter your name" pass
echo 
echo "password received (hidden)"

#3 -t timeut (input  within 5 seconds)
read -t 5 -p "Enter somthing in 5 seconds:" input
if [ $? -eq 0 ];then
    echo "you enter:$input"
else
    echo "Timeout! no input given"
fi

#4 -n  read only  N characters (her 1 char)
read -n 1 -p "press any key only 1 char accepted:" key
echo
echo "your pressed :$key"
#5  -a store input into array
read -a fruits -p "enter fruites:"
echo "Fruits list:"
for f in "${fruits[@]}"; do
echo " - $f"
done
