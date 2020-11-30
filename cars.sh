#! /bin/bash
# cars.sh
# Ryley Jue

choice=0
while [ "$choice" -ne "3" ]
do
	echo "type the number 1 to enter a new car"
	echo "type the number 2 to display the list of cars"
	echo "type the number 3 to quit and exit the program"
	read -r choice
	case "$choice" in
		"1") echo "Enter the year"
			read -r year
			echo "Enter the make"
			read -r make
			echo "Enter the model"
			read -r model
			echo "$year:$make:$model" >> My_old_cars
			;;
		"2") sort My_old_cars
			;;
		"3") echo "goodbye"
			;;
		*) echo "invalid input"
	esac
done
