#!/bin/bash -x

echo "Welcome to employee Wage problem"

isPresent=1
randomCheck=$((RANDOM%2))

if [ $isPresent -eq $randomCheck ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi

