#! /bin/bash -x
 echo " Welcome to Employee Wage computation program  on master banch"
ispresent=0
randomcheck=$((RANDOM%2))
if [  $randomcheck -eq  $ispresent ]
then 
 echo "employe present"
else
echo "employee not present"
fi
