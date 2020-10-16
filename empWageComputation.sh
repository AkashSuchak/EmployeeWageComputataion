#! /bin/bash 

#Author : Akash Suchak
#Store Daily wage along with Total wage

function totalWage(){
	#Assign Values for wage
	wagePerHour=20
	fullDayHours=8
	halfDayHours=4
	workingDays=$1 #parameter value

	#Arrays
	day=()
	dailyWages=()
	totalWages=()
	totalWage=0

	echo "Day : Daily : Total "

	for (( i=1; i<=$workingDays; i++ ))
	do
		j=$(("$i" - 1))
		day[$j]=$i
		check=$((RANDOM%3))
		dailyWage=0

		if [ $check -eq 0 ]; then
			dailyWage=$(("$wagePerHour" * "$fullDayHours"))

		elif [ $check -eq 1 ]; then
			dailyWage=$(("$wagePerHour" * "$halfDayHours"))
		fi
		dailyWages[$j]=$dailyWage
		totalWage=$(("$totalWage" + "$dailyWage"))
		totalWages[$j]=$totalWage

	done

	#Display Day : Daily Wage : Total wage
	for (( k=0; k<$workingDays; k++ ))
	do
		 echo "${day[$k]} : ${dailyWages[$k]}  :  ${totalWages[$k]}"

	done
}

#calling Function
totalWage 20
