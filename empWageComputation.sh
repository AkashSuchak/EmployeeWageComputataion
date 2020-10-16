#! /bin/bash

#Author : Akash Suchak
#Calculate Wages till a condition of total working hours or days is reached for a month

#Assign 0, 1 and 2 from RANDOM
isCheck=$((RANDOM%3))

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
	else
		totalWorkingHours=$(("$totalWorkingHours" + 0))
	fi
done
totalMonthlyWage=$(("$totalWorkingHours" * "wagePerHour"))
echo "working Hours : $totalWorkingHours and Total Wage : $totalMonthlyWage"
