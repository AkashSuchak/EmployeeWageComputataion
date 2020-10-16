#! /bin/bash

#Author : Akash Suchak
#Calculation of FullTime and PartTime Employee Daily Wage Using CASE statement

#Assign 0, 1 and 2 from RANDOM
isCheck=$((RANDOM%3))
wagePerHour=20
fullDayHours=8
halfDayHours=4

#calulation of Day Wage
fullTimeWage=$((wagePerHour * fullDayHours))
partTimeWage=$((wagePerHour * halfDayHours))

#Wage Of Full Time and PartTime Employee
case $isCheck in
	0)
		echo "FullTime Employee"
		echo "Wage is : " $fullTimeWage
		;;

 	1)
		echo "PartTime Employee"
		echo "Wage is : " $partTimeWage
		;;
	*)
		echo "Employee is Absent"
		;;
esac
