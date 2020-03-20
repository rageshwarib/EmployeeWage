#!/bin/bash -x

echo "Welcome to employee Wage problem"

isPresent=1
isPartTime=1
isFullTime=2
empRatePerHr=20
numWorkingDays=20
totolSalary=0

employeeCheck=$((RANDOM%3))

#To check whether the employee is present or absent 
if [ $isPresent -eq $employeeCheck ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi

#To calculate daily employee wage
if [ $isPresent -eq $employeeCheck ]
then 
	empHrs=8
	salary=$(($empHrs*$empRatePerHr))
else
	salary=0
fi

#To add part time employee and Wage 

#To add part time employee and calculate it's wage using case statement

#To calculate the wage for month
for (( day=1; day<=$numWorkingDays; day++ ))
do
	employeeCheck=$((RANDOM%3))
		case $employeeCheck in
			$isFullTime)
				empHrs=8 ;;
			$isPartTime)
				empHrs=4 ;;
			*)
				empHrs=0 ;;
		esac
		salary=$(($empHrs*$empRatePerHr))
		totalSalary=$(($totalSalary+$salary))
done
