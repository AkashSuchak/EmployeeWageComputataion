#! /bin/bash

#Author : Akash Suchak
#Calculation of FullTime and PartTime Employee Daily Wage

#Assign 0, 1 and 2 from RANDOM
isCheck=$((RANDOM%3))
wagePerHour=20
fullDayHours=8
halfDayHours=4

#calulation of Day Wage
fullTimeWage=$((wagePerHour * fullDayHours))
partTimeWage=$((wagePerHour * halfDayHours))

#Wage Of Full Time and PartTime Employee
if [ "$isCheck" -eq 0 ]; then
	echo "FullTime Employee"
	echo "Wage is : " $fullTimeWage

elif [ "$isCheck" -eq 1 ]; then
	echo "PartTime Employee"
	echo "Wage is : " $partTimeWage
else
	echo "Employee is Absent"
fi
