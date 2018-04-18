functionC ()
{
echo -e "Do You Want to restart the program?(Yes/No)\c"
read restart
if [ $restart == "Yes" ]
then
	functionA
else
	exit
fi
}

functionA()
{
result=Yes
Team=noInput
until [ $Team = "IND" ]
	do
		echo "India IND"
		echo "Australia AUS"
		echo "England ENG"
		echo "Pakistan PAK"
		echo "Bangladesh BAN"
	
		echo "Guess"
		read Team
		case $Team in
		IND) echo "Congratulations! Your guess is Right! The India Cricket Team is also known as Men in Blue."
		;;
		*)echo "Sorry your guess is wrong. Please try again!"
		;;
		esac

	done		
		echo "Kholi Kh"
		echo "Smith Sm"
		echo "Root Ro"
		echo "Wasim Wa"
		echo "Rahman Ra"
		echo "Dhoni Dh"
		echo "Duminy Du"

		echo "Choose three players only:"
		read player1 player2 player3

		PS3="Select player"
		select player in $player1 $player2 $player3
		do
			if [ -z $player ]
			then
				echo "Your Option is wrong!!"
			elif [ -r $player ]
			then
				cat $player
			else
				echo "The file is corrupted or unreadable!!"
			fi
		break
		done

		functionC
}

a=1
while [ $a -lt 4 ]
do
	echo "Enter a secret key"
	read secretKey
	if [[ $secretKey != "12345" ]]
	then
		echo "Incorrect secret key."
		a=`expr $a + 1`
	else
		echo -e "Welcome to the program!\n ID= $2 \n Username= $1"
		date +%D
		date +%T		
		functionA
		break
	fi
done

