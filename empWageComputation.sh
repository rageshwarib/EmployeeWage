#!/bin/bash -x

echo "Welcome to employee Wage problem"

isPresent=1
randomCheck=$((RANDOM%2))

#To check whether the employee is present or absent 
if [ $isPresent -eq $randomCheck ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi

#To calculate daily employee wage
if [ $isPresent -eq $randomCheck ]
then 
	empRatePerHr=20
	empHrs=8
	salary=$(($empHrs*$empRatePerHr))
else
	salary=0
fi
