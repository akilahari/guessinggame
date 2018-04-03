all:README.md

README.md:
	touch README.md
	echo "Title of project: Guessing game " > README.md
	echo -n "Make time and date: " >> README.md
	date >> README.md
	echo -n "No of lines of code: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
