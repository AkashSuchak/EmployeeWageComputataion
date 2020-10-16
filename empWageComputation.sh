#! /bin/bash

#Author : Akash Suchak
#Check Employee is Present or Absent

#Assign 0 or 1 from RANDOM
isCheck=$((RANDOM%2))

#Condition to check Present or Absent
if [ "$ischeck" -eq 0 ]; then
	echo "Employee is Present"
else
	echo "Employee is Absent"
