no_of_files=$(ls | wc -l)
function game {
	read guess
	while [[ $guess -ne $no_of_files ]]
	do
		if [[ $guess -gt $no_of_files ]]
		then
			if  [[ $guess -le $no_of_files+5 ]]
			then
				echo "You were soo close!! [Hint:There is less...] try again and press Enter :"
				game
			else
				echo "You were not even close!! There is much more less files...try again and press Enter"
				game
			fi
		else
			if  [[ $guess -gt $no_of_files-5 ]]
			then
				echo "You were soo close!! [Hint:There is more...] try again and press Enter :"
				game
			else
				echo "You were not even close!! There is much more files...try again"
				game
			fi
		fi

	done
}
echo "Welcome to the number of files guessing game!"
echo "Guess how many files are in the current directory and press Enter :"
game
echo "BINGO!! YOU DID IT !!"
