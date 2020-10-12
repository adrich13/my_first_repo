readme.md: guessinggame.sh
	touch README.md
	echo "Title of the project: The Guessing Game" > README.md
	echo "Course name: The Unix Workbench, Coursera" > README.md
	echo "Date make ran at:" >> README.md
	date >> README.md
	echo "\nNumber of lines file contains:" >> README.md
	cat guessinggame.sh | wc -l >> README.md

