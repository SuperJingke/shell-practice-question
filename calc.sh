#! /usr/bin/env bash


# When the program is first loaded, display a greeting to the user.# Then, display a menu that outlines the possible operations:
echo "Hello, welcome to the calculator program."

while true;do
  # Add
  # Subtract
  # Exit
 echo "Please make a selection:"
 echo "[1] Add"
 echo "[2] Subtract"
 echo "[0] Exit"

 # Then, capture the user selection.
 read selection



 # If the selection matches a supported operation, execute the operation.
 case $selection in
 '1' | "add"|"Add")
	echo "Please provide the first number:"
	read first_number
	echo "Please provide second the second number: "
	read second_number
	echo "The sum of $first_number and $second_number is: "
	expr $first_number + $second_number

	;;
 "2"| "subtract" |"Subtract")
	echo "Please provide the first number "
	read first_number
	echo "Please provide the second number:"
	read second_number
	echo "The difference of $first_number and $second_number is: "
	expr $first_number - $second_number
	;;
 "0"| "exit"|"Exit")
        echo "Come again soon, Goodbye!"
	exit 0 
       ;;
 *)
	echo "Unsupported operation: $selection"
	echo "Please try again"

	;;

  # If the selection does not match a support operation, display an error. 



  # When the operation is complete, redisplay the menu.
 esac


done
