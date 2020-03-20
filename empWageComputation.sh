#!/bin/bash -x

echo "Welcome to employee Wage problem"

isPresent=1
isPartTime=1
isFullTime=2
empRatePerHr=20
randomCheck=$((RANDOM%3))

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

#To add part time employee and Wage 
if [ $isFullTime -eq $randomCheck ]
then 
	empHrs=8
elif [ $isPartTime -eq $randomCheck ]
then
	empHrs=4
else
	empHrs=0
fi

salary=$(($empHrs*$empRatePerHr))
