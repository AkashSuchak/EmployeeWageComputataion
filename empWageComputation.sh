#! /bin/bash

#Author : Akash Suchak
<<<<<<< HEAD
#Calculate Monthly Wage Untill TotalWorkingHours Or Days is reached

=======
#Refactor code with Function

function wage(){
	#Assign Values for wage
	wagePerHour=20
	fullDayHours=8
	halfDayHours=4
	workingDays=$1
	totalWorkingHours=0
>>>>>>> UC7-RefactorCodeWithFunction

	#Wage Untill TotalWorkingHours Or Days is reached
	for (( i=1; i<=$workingDays; i++ ))
	do
		check=$((RANDOM%3))
		if [ $check -eq 0 ]; then
			totalWorkingHours=$(("$totalWorkingHours" + "$fullDayHours"))
		elif [ $check -eq 1 ]; then
			totalWorkingHours=$(("$totalWorkingHours" + "$halfDayHours"))
		fi
			if [ "$totalWorkingHours" -ge 100 ]; then
				totalWorkingHours=100
			break
		fi
	done

<<<<<<< HEAD
#Wage Untill TotalWorkingHours Or Days is reached
for (( i=1; i<=$workingDays; i++ ))
do
	check=$((RANDOM%3))
	if [ $check -eq 0 ]; then
		totalWorkingHours=$(("$totalWorkingHours" + "$fullDayHours"))
	elif [ $check -eq 1 ]; then
		totalWorkingHours=$(("$totalWorkingHours" + "$halfDayHours"))
	fi
		if [ "$totalWorkingHours" -ge 100 ]; then
			totalWorkingHours=100
		break
	fi
done

#Display Total Working Hours with Total Wage
totalMonthlyWage=$(("$totalWorkingHours" * "wagePerHour"))
echo "working Hours : $totalWorkingHours and Total Wage : $totalMonthlyWage"
=======
	#Display Total Working Hours with Total Wage
	totalMonthlyWage=$(("$totalWorkingHours" * "wagePerHour"))
	echo "working Hours : $totalWorkingHours and Total Wage : $totalMonthlyWage"
}
#calling Function
wage 20
>>>>>>> UC7-RefactorCodeWithFunction
