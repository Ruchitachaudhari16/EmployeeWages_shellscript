isPartTime=1;
isFullTime=2;
MAX_HRS_IN_MONTH=4;
empRatePerHr=20;
numWorkingDays=20;

#Variables
totalEmpHr=0
totalWorkingDays=0

function getWorkingHours()
{

local $empCheck=$1

case $empCheck in
      
 $isFullTime)
     empHrs=8
         ;;

        $isPartTime)
           empHrs=4
          ;;

          *)
      empHrs=0
           ;;
esac
echo $empHrs

}

while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $numWorkingdays ]]
do 
   ((totalWorkingDays++))
      empCheck= $((RANDOM%3));
      
empHrs="$( getWorkingHrs $empCheck )"
      totalEmpHrs=$(( $totalEmpHr + $empHrs ))
      dailyWage[$totalWorkingDays]=$(($empHrs*($empRatePerHr)))
 done
totalSalary=$(($totalEmpHr*$empRatePerHr));
echo ${dailyWage[@]}
