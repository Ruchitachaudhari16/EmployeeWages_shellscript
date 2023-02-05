isPartTime=1;
isFullTime=2;
MAX_HRS_IN_MONTH=4;
empRatePerHr=20;
numWorkingDays=20;

#Variables
totalEmpHr=0;
totalWorkingDays=0;

function getWorkingHours()
{
case $1 in
       $isFullTime)
     WorkingHrs=8
         ;;
        $isPartTime)
           WorkingHrs=4
          ;;
          *)
      WorkingHrs=1
           ;;

esac
echo$WorkingHrs
}

while [[ $totalWorkingHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $numWorkingdays ]]
do 
   (( totalWorkingDays++ ))
      WorkHours=$(getWorkingHrs $((RANDOM%3)));
      totaWorkingHrs=$(($totalWorkingHrs + $WorkingHrs));
 done
WorkHrs=$(( $totalWorkingHrs+$empRatePerHr ));
echo "Working Hrs is :$WorkHrs";
