#! /bin/bash

#Author : Akash Suchak
#Calculate Monthly Wage Untill TotalWorkingHours Or Days is reached


#Assign Values for wage
wagePerHour=20
fullDayHours=8
halfDayHours=4
workingDays=20
totalWorkingHours=0

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
