#!/bin/bash

n=36
login () {
	while [ $n -le 71 ]
	do
		ssh zixwang@tlab0$n.clamv.jacobs-university.de
		# ssh returns 0 when login successed
		if [ $? -eq 0 ]
		then
			echo "Press enter to continue."
			read foo
			break
		fi
		n=$(( n+1 ))
	done
}

login
