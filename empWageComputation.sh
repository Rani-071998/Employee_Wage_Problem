#! /bin/bash -x
 echo " Welcome to Employee Wage computation program  on master banch"
is_present_full_time=1
is_present_half_time=2
randomcheck=$((RANDOM%2))
empRateperHr=20
if [ $randomcheck -eq $is_present_full_time ] 
then
     empHr=8 
elif [ $randomcheck -eq $is_present_half_time ] 
then 
      empHr=4 
else
      empHr=o 
fi
salary=$(( empRateperHr * empHr ))
echo $salary
