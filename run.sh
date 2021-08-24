#!/bin/bash

#### init env.

script_path=$(pwd)
space(){

	echo ''
}

display(){
	clear
	echo '---------------------'
	echo " Hello ${student} "
	echo '---------------------'
}


enter(){
	echo -n 'Enter : ';read input
}

welcome_page(){
	input=""
	while [ -z ${input} ];do
	display
	
	space

	echo 'please enter your name.'

	enter
	student=$input
done

}

menu_example(){
	display ${student}

	space

	ls ${script_path}/example | cat -n

	space

	echo 'Please select you example'
	enter

	file_selector=$input
}

example(){
	
	example_file=$(ls ${script_path}/example | cat -n |sed -n ${file_selector}p|awk '{print $2}')


		
		for i in $(grep -n ^[1-9] $script_path/example/$example_file |cut -d':' -f1); do

			display

			KEY_INDEX=$(sed -n ${i}p $script_path/example/$example_file)


			sed -n "/$KEY_INDEX/,/^$/p" $script_path/example/$example_file|sed  's|+||g';

			enter

			ANSWER=$input
				if [ ! -z "$(sed -n "/$KEY_INDEX/,/^$/p" $script_path/example/$example_file|grep -i "+${ANSWER}")" ];then
					SCORE=$((SCORE+1));
				fi
		done

}

result_page(){
	display
	space
	echo 'result'
	echo '------'
	echo YOU SCORE IS : $SCORE
	echo '------'
}
#### Program start here

SCORE=0

welcome_page
menu_example
example
result_page
