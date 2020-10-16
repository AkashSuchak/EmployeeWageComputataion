#! /bin/bash

#Author : Akash Suchak
#Store Daily wage along with Total wage

function totalWage(){

	#Assign Values for wage
	wagePerHour=20
	fullDayHours=8
	halfDayHours=4
	workingDays=$1 #parameter value
	totalWorkingHours=0

	#count Daily wage
	totalWage=0

	echo "Daily : Total "
	#Wage Untill TotalWorkingHours Or Days is reached
	for (( i=1; i<=$workingDays; i++ ))
	do
		check=$((RANDOM%3))
		dailyWage=0
		if [ $check -eq 0 ]; then
			dailyWage=$(("$wagePerHour" * "$fullDayHours"))

		elif [ $check -eq 1 ]; then
			dailyWage=$(("$wagePerHour" * "$halfDayHours"))

		fi
		totalWage=$(("$totalWage" + "$dailyWage"))
		echo "$dailyWage  :  $totalWage"
	done
}

#calling Function
totalWage 20
