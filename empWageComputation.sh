#!/bin/bash -x

echo "Welcome to employee Wage problem"

#Constants
IS_PRESENT=1
IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20
#Variables
totolSalary=0
totalEmpHrs=0
totalWorkingDays=0
salary=0

employeeCheck=$((RANDOM%3))

#To check whether the employee is present or absent 
if [ $IS_PRESENT -eq $employeeCheck ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi

#To calculate daily employee wage
if [ $IS_PRESENT -eq $employeeCheck ]
then 
	empHrs=8
	salary=$(($empHrs*$EMP_RATE_PER_HR))
else
	salary=0
fi

#To add part time employee and Wage 

#To add part time employee and calculate it's wage using case statement

#To calculate the wage for month
for (( day=1; day<=$MAX_WORKING_DAYS; day++ ))
do
	employeeCheck=$((RANDOM%3))
		case $employeeCheck in
			$IS_FULL_TIME)
				empHrs=8 ;;
			$IS_PART_TIME)
				empHrs=4 ;;
			*)
				empHrs=0 ;;
		esac
		salary=$(($empHrs*$EMP_RATE_PER_HR))
		totalSalary=$(($totalSalary+$salary))
done

#Calculate wages till a condition of total working hours or days is reached for a month
# VARIABLES

while [[ $totalEmpHrs -lt $MAX_WORKING_DAYS && $totalWorkingDays -lt $MAX_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	employeeCheck=$((RANDOM%3))
	case $employeeCheck in
		$IS_FULL_TIME)
			empHrs=8 ;;
		$IS_PART_TIME)
			empHrs=4 ;;
		*)
			empHrs=0 ;;
	esac
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
done

totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR))

