#! /bin/bash

#Author : Akash Suchak
#Calculation of Employee Daily Wage

#Assign 0 or 1 from RANDOM
isCheck=$((RANDOM%2))
wagePerHour=20
fullDayHours=8

#calulation of Day Wage
dailyWage=$((wagePerHour * fullDayHours))

#Employee present than he/she will get wage
if [ "$isCheck" -eq 0 ]; then
	echo "Employee is Present"
	echo "Wage is : " $dailyWage
else
	echo "Employee is Absent"
fi
