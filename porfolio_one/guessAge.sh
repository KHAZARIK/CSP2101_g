# Written by- Krish Hazarika 10376173 Edith Cowan University
# Script name- guess_age.sh


# Purpose - This script will request an integer value input [20 - 70]
# 	If the input is between 20-70 then input data will compare with randomly
# 	generate number between 20-70. If the user input is higher than
#	generated number, the script will display "your answer is high".
#	Similarily, if the user input smaller than the generated number,
#	the script will display "your answer is low". Lastly, if the input is
#	equivalent to the generated number, then the script will display
#	"you won man, answer is X" (X| x is an element of set of numbers Y {20,21,....,70, 
#	| x>=20 and x<=70}).


#!/bin/bash
ans=$(shuf -i20-70 -n1) #function generates a number between (20-70) 
while true; do #using a while loop because the number of iteration is not known.
	echo -n "Enter age between 20-70: "  #Prompts user to input an integer between (20 - 70)
	read VAR #Stores the input provided by the user into a variable called VAR.
	if [[ $VAR =~ ^[+-]?[0-9]*$ ]] && [[ $VAR -ge 20 ]] && [[ $VAR -le 70 ]]
	then
		if [ $VAR -eq $ans ] #check if VAR is equal to ans
		then
			echo "you won man, answer is $VAR" #Notifies user about guessing the right age
			break #Ends the while loop
			exit 0
		elif [ $VAR -gt $ans ] #checks if VAR is greater than ans
		then
			echo "you answer is high"
		else
			echo "you answer is low"
		fi
	else
		echo "Enter a number (20-70)!!!" #requests user to input a valid integer.
	fi
done


