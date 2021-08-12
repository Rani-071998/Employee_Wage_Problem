#! /bin/bash -x
 echo " Welcome to Employee Wage computation program  on master banch"
is_present_full_time=1
is_present_half_time=2
empRateperHr=20
totalworkingHr=0
maxworkingdays=20
day=1
while [ $day -le $maxworkingdays ] 
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
totalworkonHr=$(( totalworkingHr + empHr ))
salary=$(( empRateperHr * empHr ))
echo "salary:"$salary
((day++))
done
totalsalary=$(( totalworkingHr * empRateperHr ))
echo "Total salary:="$totalsalary


