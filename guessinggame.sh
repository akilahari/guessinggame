#!/usr/bin/env bash
# file:guessinggame.sh

guessinggame() 
{
	while true
	do
		echo "Guess the number of files in current directory and then press enter:"
		read response
		echo "You entered :$response"
		#getting the file count from the current directory 
		file_count=`ls ~/guessinggame | wc -l` 
		#guessing game condition checked
		if [[ $file_count -eq $response ]]
		then
 			echo "Congratulations ! Your guess is correct "
			break
		elif [[ $response -gt $file_count ]]
		then 
			echo "Guess is High ,try again !"
			continue
		else
			echo "Guess is Low ,try again !"
			continue
		fi
	done

}
#calling the function 
guessinggame

