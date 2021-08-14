#! /bin/bash -x
 echo " Welcome to Employee Wage computation program  on master banch"
# array declaration
declare -a dailyWage
# constant varialbles
IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF-TIME=2
EMP_RATE_PER_HR=20
MAX_WORKING_DAY=20
MAX_WORK_HR=70
totalworkingHr=0
day=1
function getworkHr() {
        local empCheck=$1
        local empHr=0
        case $empCheck in
        $IS_PRESENT_FULL_TIME)
        empHr=8;;
        $IS_PRESENT_HALF_TIME)
        empHr=4;;
        *)
          empHr=0;;
esac
        echo $empHr
}
function getWage(){
        local empHr=$1
        echo $(( empHr * EMP_RATE_PER_HR ))

}

while [ $day -le $MAX_WORKING_DAY ] && [ $totalworkingHr -lt $MAX_WORK_HR ]
do
        # variable
        empCheck=$(( RANDOM%3 ))

        #CALLING FUNCTION
        empHr="$( getworkHr $empCheck )"
 totalworkingHr=$(( totalworkingHr + empHr ))
       # salary=$(( empHr * EMP_RATE_PER_HR ))

        dailyWage[((day++))]=$( getWage $empHr)

done
totalsalary=$( getWage $totalworkingHr )
echo "total:-$totalsalary"
echo dailyWages:${dailyWage[*]}







