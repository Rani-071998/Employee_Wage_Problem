#! /bin/bash -x
 echo " Welcome to Employee Wage computation program  on master banch"
is_present_full_time=1
is_present_half_time=2
empRateperHr=20
for ((day=1;day<=20;day++))
do 
 randomcheck=$((RANDOM%2))

case $randomcheck in
     $is_present_full_time)
     empHr=8 ;;
    $is_present_half_time )
      empHr=4 ;;
    *)
      empHr=o ;;
esac
salary=$(( empRateperHr * empHr ))
done
echo $salary

