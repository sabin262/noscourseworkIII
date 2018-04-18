#!/bin/sh
#Network and Operating System Coursework III

#Defining varaibles 
country=""
choice="yes"
tries=3
#Defining variable for the secret key
secretkey="nos"

#Defining a function to display and select the Criket teams 
countrySelection() 
{
	
	until [[ "$country" = "IND" ]]
	do
		echo -e "Country\t\tCode\nIndia\t\tIND\nAustralia\tAUS\nEngland\t\tENG\nPakistan\tPAK\nBangladesh\tBAN"
		echo "Guess the code of the winning country."
		read country
		case "$country" in
			"IND") echo -e "Correct Choice. India --------------\n"
			;;
			*) echo -e "Wrong input\n"
		esac
	done
	country=""
	playerSelection
}

#Defining a function for player selection
playerSelection()
{
	echo -e "Player\t\tCode\nKholi\t\tKh\nSmith\t\tSm\nRoot\t\tRo\nWasim\t\tWa\nRahman\t\tRa\nDhoni\t\tDh\nDuminy\t\tDu"
	echo "Please type three player codes separated by a space"
	first=""
	second=""
	third=""
	read first second third
	PS3="Choose a player: "
	until [[ "$player" = "$first" || "$player" = "$second" || "$player" = "$third" ]]
	do
		echo -e "\nThe players you selected are"	
		select player in $first $second $third
		do
			if [[ -r $player ]]
			then
				echo -e "You have chosen:$player\n"
				cat $player
			elif [[ -z $player ]]
			then
				echo -e "Please choose again\n"
			else
				echo -e "Corrupt or unreadable file.\n"
				continue			
			fi			 
			break	
		done
	done
	player=""
	first=""
	second=""
	third=""
	choice=""
}



#Promting the user for secret key. Exit the program if secret key is wrong for 3 inputs
number=0
while [ $number -lt 3 ]
do
	echo "Enter the secret key:"
	read secretkey
	if [ "$secretkey" != "nos" ]
	then
		tries=` expr $tries - 1 `
		echo "Wrong Input. You have $tries left"
	else
		echo -e "----------Welcome user----------\nUserID:$id\nUsername:$name\n"
		echo "Program Accessed on"		
		echo "Date: `date +%D`" 
		echo "Time: `date +%T`"
		echo -e "\n"
		while [ "$choice" = "yes" ]
		do 
			countrySelection
			echo -e "\nDo you want to continue?: yes or no? "
			until [[ "$choice" = "yes" || "$choice" = "no" ]]
			do			
				read choice
				if [[ "$choice" = "yes" || "$choice" = "no" ]]
				then
					continue
				else
					echo "Type yes or no:"
				fi 
			done	
		done
		break
	fi
	number=` expr $number + 1 `
done
if [ $number -gt 2 ]
then
	echo -e "\nToo many wrong inputs. System will now exit"
	exit
fi











