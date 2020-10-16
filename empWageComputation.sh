#! /bin/bash

#Author : Akash Suchak
#Calculation of FullTime and PartTime Employee Monthly Wage Using CASE statement

#Assign 0, 1 and 2 from RANDOM
isCheck=$((RANDOM%3))
wagePerHour=20
fullDayHours=8
halfDayHours=4

#calulation of Day Wage
fullTimeWage=$((wagePerHour * fullDayHours))
partTimeWage=$((wagePerHour * halfDayHours))

#Calculation of Montly Wage
workingDays=20
monthlyFullTime=$((workingDays * fullTimeWage ))
monthlyPartTime=$((workingDays * partTimeWage))
#Wage Of Full Time and PartTime Employee
case $isCheck in
	0)
		echo "FullTime Employee"
		echo "Wage is : " $monthlyFullTime
		;;

 	1)
		echo "PartTime Employee"
		echo "Wage is : " $monthlyPartTime
		;;
	*)
		echo "Employee is Absent"
		;;
esac
